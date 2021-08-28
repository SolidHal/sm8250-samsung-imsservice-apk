.class public Lcom/sec/internal/ims/aec/receiver/SmsNotification;
.super Landroid/content/BroadcastReceiver;
.source "SmsNotification.java"


# static fields
.field private static final DATA_AUTHORITY:Ljava/lang/String; = "localhost"

.field private static final DATA_SCHEME:Ljava/lang/String; = "sms"

.field private static final DEST_PORT:Ljava/lang/String; = "8095"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TS43_SMS_PUSH_MESSAGE:Ljava/lang/String; = "aescfg"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModuleHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mModuleHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method private sendSmsNotification(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 51
    const-string/jumbo v0, "sendSmsNotification: "

    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 52
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    .line 53
    aget-object v2, v1, v2

    .line 55
    .local v2, "sms":Landroid/telephony/SmsMessage;
    const-string/jumbo v3, "subscription"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 56
    .local v3, "subId":I
    iget-object v4, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 57
    .local v4, "mSubscriptionMgr":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v4, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 58
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    .line 60
    .local v6, "phoneId":I
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "body":Ljava/lang/String;
    sget-object v8, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 63
    sget-object v8, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "sendSmsNotification: discard empty notification"

    invoke-static {v8, v9, v6}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 64
    :cond_0
    const-string v8, "aescfg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 65
    iget-object v8, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mModuleHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 66
    .local v8, "message":Landroid/os/Message;
    const/16 v9, 0x8

    iput v9, v8, Landroid/os/Message;->what:I

    .line 67
    iput v6, v8, Landroid/os/Message;->arg1:I

    .line 68
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    iget-object v9, p0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->mModuleHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    nop

    .end local v8    # "message":Landroid/os/Message;
    goto :goto_0

    .line 71
    :cond_1
    sget-object v8, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "sendSmsNotification: discard invalid notification"

    invoke-static {v8, v9, v6}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "messages":[Landroid/telephony/SmsMessage;
    .end local v2    # "sms":Landroid/telephony/SmsMessage;
    .end local v3    # "subId":I
    .end local v4    # "mSubscriptionMgr":Landroid/telephony/SubscriptionManager;
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "phoneId":I
    .end local v7    # "body":Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 40
    const-string v1, "localhost"

    const-string v2, "8095"

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 46
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->sendSmsNotification(Landroid/content/Intent;)V

    .line 47
    return-void
.end method
