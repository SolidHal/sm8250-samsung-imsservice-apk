.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiver;
.source "TelephonyAdapterPrimaryDeviceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SmsReceiverBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    .line 314
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    .line 315
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "SmsReceiverBase"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    return-void
.end method


# virtual methods
.method protected readMessageFromSMSIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 320
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 321
    .local v0, "smss":[Landroid/telephony/SmsMessage;
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->access$000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string/jumbo v3, "readMessageFromSMSIntent: enter"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 323
    aget-object v1, v0, v1

    .line 325
    .local v1, "sms":Landroid/telephony/SmsMessage;
    const/4 v2, -0x1

    const-string/jumbo v3, "subscription"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 326
    .local v2, "subId":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSlotId(I)I

    move-result v3

    .line 328
    .local v3, "phoneId":I
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "message":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 330
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    const-string v7, "UTF-16"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v4, v5

    .line 332
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 333
    .local v5, "msg":Landroid/os/Message;
    const/4 v6, 0x1

    iput v6, v5, Landroid/os/Message;->what:I

    .line 334
    iput v3, v5, Landroid/os/Message;->arg1:I

    .line 335
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 336
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    iget v6, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    if-ne v6, v3, :cond_1

    .line 337
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->sendMessage(Landroid/os/Message;)Z

    .line 340
    .end local v1    # "sms":Landroid/telephony/SmsMessage;
    .end local v2    # "subId":I
    .end local v3    # "phoneId":I
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method
