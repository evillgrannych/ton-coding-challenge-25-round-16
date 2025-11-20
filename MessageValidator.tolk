// Contract A - MessageValidator.tolk
contract MessageValidator {
    address contractB;

    // Constructor to initialize Contract B address
    constructor(address _contractB) {
        contractB = _contractB;
    }

    // Function to validate and send message to Contract B
    public function validateAndForwardMessage(string message) {
        string validatedMessage = validateMessage(message); // 验证消息
        if (validatedMessage == "") {
            log("Invalid message received"); // 如果消息无效，记录日志
            return;
        }
        call(contractB, "handleMessage", validatedMessage); // 将消息发送给 B 合约
    }

    // Function to validate incoming messages
    private function validateMessage(string message) returns(string) {
        if (message == "") {
            return ""; // 空消息无效
        }
        if (length(message) < 5) {
            return ""; // 消息过短，认为无效
        }
        return message; // 返回有效消息
    }

    // Handle the RichBounce error from Contract B
    public function handleRichBounce(string errorMessage) {
        log("Handled RichBounce error from Contract B: " + errorMessage); // 处理回弹错误
    }
}
