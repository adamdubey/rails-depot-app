require "test_helper"

class SupportMailboxTest < ActionMailbox::TestCase
  test "create a SupportRequest when we get a support email" do
    receive_inbound_email_from_mail(
      to: "support@example.com",
      from: "jim@example.com",
      subject: "Need help with my order",
      body: "I did not see my order confirmation email"
    )

    support_request = SupportRequest.last
    assert_equal "jim@example.com", support_request.email
    assert_equal "Need help with my order", support_request.subject
    assert_equal "I did not see my order confirmation email", support_request.body
    assert_nil support_request.order
  end

  test "create a SupportRequest with most recent order" do
    recent_order = orders(:one)
    older_order = orders(:another_one)
    non_customer = orders(:other_customer)

    receive_inbound_email_from_mail(
      to: "support@example.com",
      from: recent_order.email,
      subject: "Need help with my order",
      body: "I did not see my order confirmation email"
    )

    support_request = SupportRequest.last
    assert_equal recent_order.email, support_request.email
    assert_equal "Need help with my order", support_request.subject
    assert_equal "I did not see my order confirmation email", support_request.body
    assert_equal recent_order, support_request.order
  end
end
