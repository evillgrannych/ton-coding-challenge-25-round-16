// Contract B - ErrorResponder.tolk
contract ErrorResponder {
    // Function to receive and process messages, and trigger error
    public function handleMessage(string message) {
        log("Message received in Contract B: " + message); // 接收到的消息
        // Triggering error to simulate RichBounce
        throw("RichBounce triggered in Contract B: Message processing failed."); // 抛出回弹错误
    }
}
