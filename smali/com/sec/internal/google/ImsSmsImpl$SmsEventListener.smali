.class Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;
.super Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsSmsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsSmsImpl;


# direct methods
.method private constructor <init>(Lcom/sec/internal/google/ImsSmsImpl;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-direct {p0}, Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/google/ImsSmsImpl;Lcom/sec/internal/google/ImsSmsImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;
    .param p2, "x1"    # Lcom/sec/internal/google/ImsSmsImpl$1;

    .line 220
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;-><init>(Lcom/sec/internal/google/ImsSmsImpl;)V

    return-void
.end method


# virtual methods
.method public onReceiveIncomingSMS(ILjava/lang/String;[B)V
    .locals 6
    .param p1, "messageId"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    if-nez p2, :cond_0

    .line 224
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsSmsImpl;->access$500(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;-><init>()V

    .line 234
    .local v1, "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    const-string v2, "application/vnd.3gpp.sms"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 235
    const-string v0, "3gpp"

    .line 236
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/sec/internal/google/ImsSmsImpl;->access$602(Lcom/sec/internal/google/ImsSmsImpl;I)I

    .line 237
    invoke-virtual {v1, p3, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseDeliverPdu([BLjava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMessageType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 245
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsSmsImpl;->access$500(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v2

    invoke-interface {v2, p1, v0, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsReceived(ILjava/lang/String;[B)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMessageType()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 247
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMessageRef()I

    move-result v3

    invoke-static {v2, v3, p1, v0, p3}, Lcom/sec/internal/google/ImsSmsImpl;->access$700(Lcom/sec/internal/google/ImsSmsImpl;IILjava/lang/String;[B)V

    goto :goto_0

    .line 249
    :cond_2
    const-string v2, "application/vnd.3gpp2.sms"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    const-string v0, "3gpp2"

    .line 251
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v2, v3}, Lcom/sec/internal/google/ImsSmsImpl;->access$602(Lcom/sec/internal/google/ImsSmsImpl;I)I

    .line 252
    invoke-virtual {v1, p3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->convertToFrameworkSmsFormat([B)[B

    move-result-object v2

    .line 253
    .local v2, "convertedPdu":[B
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMsgID()I

    move-result v3

    .line 254
    .local v3, "token":I
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMessageType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 255
    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMsgID()I

    move-result v5

    invoke-static {v4, v5, p1, v0, v2}, Lcom/sec/internal/google/ImsSmsImpl;->access$700(Lcom/sec/internal/google/ImsSmsImpl;IILjava/lang/String;[B)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v4}, Lcom/sec/internal/google/ImsSmsImpl;->access$500(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v4

    invoke-interface {v4, v3, v0, v2}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsReceived(ILjava/lang/String;[B)V

    .line 260
    .end local v2    # "convertedPdu":[B
    .end local v3    # "token":I
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsSmsImpl;->access$800(Lcom/sec/internal/google/ImsSmsImpl;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v3}, Lcom/sec/internal/google/ImsSmsImpl;->access$100(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "< NEW_SMS : contentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " messageId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_5

    .line 262
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsSmsImpl;->access$100(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pdu = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_5
    return-void

    .line 228
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sms not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onReceiveSMSAck(IILjava/lang/String;[BI)V
    .locals 9
    .param p1, "messageId"    # I
    .param p2, "reasonCode"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "pdu"    # [B
    .param p5, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsSmsImpl;->access$500(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "application/vnd.3gpp2.sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 275
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v1, p1}, Lcom/sec/internal/google/ImsSmsImpl;->access$900(Lcom/sec/internal/google/ImsSmsImpl;I)I

    move-result v1

    .line 276
    .local v1, "token":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsSmsImpl;->access$100(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cannot find token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 280
    :cond_1
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;

    invoke-direct {v8, p1, p2, p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;-><init>(II[BI)V

    .line 281
    .local v8, "response":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsSmsImpl;->access$1000(Lcom/sec/internal/google/ImsSmsImpl;)I

    move-result v3

    move v4, v1

    move v5, p1

    move v6, p2

    move v7, p5

    invoke-static/range {v2 .. v8}, Lcom/sec/internal/google/ImsSmsImpl;->access$1100(Lcom/sec/internal/google/ImsSmsImpl;IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 282
    return-void

    .line 271
    .end local v0    # "type":I
    .end local v1    # "token":I
    .end local v8    # "response":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sms not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onReceiveSMSDeliveryReportAck(III)V
    .locals 5
    .param p1, "messageId"    # I
    .param p2, "reasonCode"    # I
    .param p3, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsSmsImpl;->access$1000(Lcom/sec/internal/google/ImsSmsImpl;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 288
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/google/ImsSmsImpl;->access$800(Lcom/sec/internal/google/ImsSmsImpl;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsSmsImpl;->access$100(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< SMS_ACK : mno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " messageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reasonCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " retryAfter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/google/ImsSmsImpl;->access$500(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 295
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/google/ImsSmsImpl;->access$1200(Lcom/sec/internal/google/ImsSmsImpl;)Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/google/ImsSmsImpl;->access$1200(Lcom/sec/internal/google/ImsSmsImpl;)Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mRetryCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 300
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/google/ImsSmsImpl;->access$1300(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v3}, Lcom/sec/internal/google/ImsSmsImpl;->access$1200(Lcom/sec/internal/google/ImsSmsImpl;)Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 301
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsSmsImpl;->access$1300(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/os/Handler;

    move-result-object v2

    mul-int/lit16 v3, p3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 302
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsSmsImpl;->access$1200(Lcom/sec/internal/google/ImsSmsImpl;)Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    move-result-object v2

    iget v3, v2, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mRetryCount:I

    .line 303
    return-void

    .line 309
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/google/ImsSmsImpl;->access$500(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsSmsListener;->onReceiveSmsDeliveryReportAck(II)V

    .line 310
    return-void

    .line 292
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Sms not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
