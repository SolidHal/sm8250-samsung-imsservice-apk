.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;
.super Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
.source "PushMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage$Message;
    }
.end annotation


# static fields
.field private static final ENG_MODE:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PNS_SUBTYPE_CONFIG_CHANGE:Ljava/lang/String; = "config-change"

.field private static final PNS_TYPE_CONN_MGR:Ljava/lang/String; = "conn_mgr"

.field private static final PNS_TYPE_IAM:Ljava/lang/String; = "IAM"

.field private static final PNS_TYPE_NOTIFY:Ljava/lang/String; = "Notify"

.field private static final PNS_TYPE_SES:Ljava/lang/String; = "ENA"


# instance fields
.field public cc:[Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/CarbonCopyRecipient;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cc"
    .end annotation
.end field

.field private confirmationUrl:Ljava/lang/String;

.field public mMessage:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage$Message;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field public pnsSubtype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pns-subtype"
    .end annotation
.end field

.field public pnsTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pns-time"
    .end annotation
.end field

.field public pnsType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pns-type"
    .end annotation
.end field

.field public recipients:[Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/Recipient;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipients"
    .end annotation
.end field

.field public sender:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/Sender;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender"
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serviceName"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->LOG_TAG:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->ENG_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;-><init>()V

    return-void
.end method

.method private confirmPushMsgDelivery(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmPushMsgDelivery: url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->confirmationUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->confirmationUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.nsds.action.ACTION_CONFIRM_PUSH_MSG_DELIVERY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->mMessage:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage$Message;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage$Message;->imsi:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->confirmationUrl:Ljava/lang/String;

    const-string v2, "confirmation_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getNotificationContent()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsSubtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationTitle()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleConfigChange(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "refresh Device config:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.nsds.action.REFRESH_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    return-void
.end method


# virtual methods
.method public broadcastFcmMessage(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "msisdns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->recipients:[Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/Recipient;

    if-eqz v1, :cond_1

    .line 136
    const/4 v1, 0x0

    .local v1, "ind":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->recipients:[Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/Recipient;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 137
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/Recipient;->uri:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->deriveMsisdnFromRecipientUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "msisdn":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v2    # "msisdn":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "ind":I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.nsds.action.RECEIVED_PUSH_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "msisdn_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->origMessage:Ljava/lang/String;

    const-string/jumbo v3, "orig_push_message"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    const-string/jumbo v3, "pns_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsSubtype:Ljava/lang/String;

    const-string/jumbo v3, "pns_subtype"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notification_title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->getNotificationContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notification_content"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "push notification broadcastIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, v1, v2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 153
    return-void
.end method

.method public setConfirmUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "confirmUrl"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->confirmationUrl:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setOrigMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->origMessage:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public shouldBroadcast(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    const-string v1, "Notify"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsSubtype:Ljava/lang/String;

    .line 93
    const-string v1, "config-change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->handleConfigChange(Landroid/content/Context;)V

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->confirmPushMsgDelivery(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    const-string v1, "conn_mgr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    const-string v1, "ENA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    .line 100
    const-string v1, "IAM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->ENG_MODE:Z

    return v0
.end method
