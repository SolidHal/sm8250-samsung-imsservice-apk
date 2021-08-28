.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SmsReceiver;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;
.source "TelephonyAdapterPrimaryDeviceRjil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    .line 210
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    return-void
.end method


# virtual methods
.method protected readMessageFromSMSIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 213
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 214
    .local v0, "smss":[Landroid/telephony/SmsMessage;
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->access$000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    const-string/jumbo v3, "readMessageFromSMSIntent: enter"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 216
    aget-object v1, v0, v1

    .line 217
    .local v1, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 219
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v2, v3

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->sendMessage(Landroid/os/Message;)Z

    .line 223
    .end local v1    # "sms":Landroid/telephony/SmsMessage;
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method
