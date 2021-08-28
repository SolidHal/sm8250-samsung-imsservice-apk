.class Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;
.source "TelephonyAdapterPrimaryDeviceVzwMvs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PortSmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$1;

    .line 209
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;)V

    return-void
.end method


# virtual methods
.method protected readMessageFromSMSIntent(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .line 212
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "format"

    .line 213
    .local v3, "DATA_SMS_FORMAT":Ljava/lang/String;
    const-string v4, "3gpp2"

    .line 214
    .local v4, "DATA_SMS_3GPP2_FORMAT":Ljava/lang/String;
    const-string/jumbo v5, "pdus"

    .line 215
    .local v5, "DATA_SMS_PDUS":Ljava/lang/String;
    const-string v6, "UTF-8"

    .line 217
    .local v6, "DATA_SMS_ENCODING":Ljava/lang/String;
    const-string v0, "format"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "format":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v8, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    iget v8, v8, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readMessageFromSMSIntent: format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    const-string v0, "3gpp2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "UTF-8"

    const-string v9, ",MSG:"

    const v10, 0x13040002

    const-string/jumbo v11, "readMessageFromSMSIntent: message: "

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    .line 223
    :try_start_0
    const-string/jumbo v0, "pdus"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v0, "messages":[Ljava/lang/Object;
    nop

    .line 228
    if-eqz v0, :cond_0

    aget-object v13, v0, v12

    if-eqz v13, :cond_0

    .line 229
    aget-object v13, v0, v12

    check-cast v13, [B

    .line 230
    .local v13, "data":[B
    new-instance v14, Ljava/lang/String;

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v14, v13, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v8, v14

    .line 231
    .local v8, "message":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->access$100()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    iget v15, v15, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v15, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    iget v12, v12, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->mPhoneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 233
    iget-object v9, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->sendMessage(Landroid/os/Message;)Z

    .line 235
    .end local v0    # "messages":[Ljava/lang/Object;
    .end local v8    # "message":Ljava/lang/String;
    .end local v13    # "data":[B
    :cond_0
    goto/16 :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->access$100()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    iget v9, v9, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readMessageFromSMSIntent: ClassCastException: cannot get message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    return-void

    .line 236
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 237
    .local v0, "smss":[Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_3

    const/4 v12, 0x0

    aget-object v13, v0, v12

    if-eqz v13, :cond_3

    .line 238
    aget-object v13, v0, v12

    .line 239
    .local v13, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v12

    .line 240
    .local v12, "message":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 241
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v15

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v14, v15, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v12, v14

    .line 243
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->access$100()Ljava/lang/String;

    move-result-object v8

    iget-object v14, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    iget v14, v14, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v14, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    iget v11, v11, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->mPhoneId:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 245
    iget-object v8, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$PortSmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v12}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->sendMessage(Landroid/os/Message;)Z

    .line 248
    .end local v0    # "smss":[Landroid/telephony/SmsMessage;
    .end local v12    # "message":Ljava/lang/String;
    .end local v13    # "sms":Landroid/telephony/SmsMessage;
    :cond_3
    :goto_0
    return-void
.end method
