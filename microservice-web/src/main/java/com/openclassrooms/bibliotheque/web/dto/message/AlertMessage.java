package com.openclassrooms.bibliotheque.web.dto.message;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AlertMessage {

    private MessageType messageType;
    private String      message;

    public enum MessageType {
        ERROR, VALID
    }

    public boolean containsNullValue() {
        return messageType == null && message.isEmpty();
    }
}
