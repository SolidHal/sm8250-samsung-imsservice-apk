.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiver;
.source "TelephonyAdapterPrimaryDeviceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PortSmsReceiverBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    .line 294
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    .line 295
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "PortSmsReceiverBase"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    return-void
.end method


# virtual methods
.method protected readMessageFromSMSIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 300
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 301
    .local v0, "smss":[Landroid/telephony/SmsMessage;
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->access$000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string/jumbo v3, "readMessageFromSMSIntent: enter"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 303
    aget-object v1, v0, v1

    .line 304
    .local v1, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 306
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v2, v3

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$PortSmsReceiverBase;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->sendMessage(Landroid/os/Message;)Z

    .line 310
    .end local v1    # "sms":Landroid/telephony/SmsMessage;
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method
