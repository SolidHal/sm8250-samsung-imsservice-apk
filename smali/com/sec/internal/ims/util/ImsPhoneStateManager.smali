.class public Lcom/sec/internal/ims/util/ImsPhoneStateManager;
.super Ljava/lang/Object;
.source "ImsPhoneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;
    }
.end annotation


# static fields
.field private static INTENT_ACTION_DEFAULT_DATA_SUB_CHANGED:Ljava/lang/String;

.field private static INTENT_ACTION_SUBINFO_UPDATED:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListenEvent:I

.field private mListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListenerInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mSubManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    sput-object v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->INTENT_ACTION_DEFAULT_DATA_SUB_CHANGED:Ljava/lang/String;

    .line 38
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    sput-object v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->INTENT_ACTION_SUBINFO_UPDATED:Ljava/lang/String;

    .line 40
    const-class v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListenEvent:I

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mContext:Landroid/content/Context;

    .line 51
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 52
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mSubManager:Landroid/telephony/SubscriptionManager;

    .line 54
    iput p2, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListenEvent:I

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->INTENT_ACTION_SUBINFO_UPDATED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->INTENT_ACTION_DEFAULT_DATA_SUB_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getPhoneStateListenerInternal(I)Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;
    .locals 3
    .param p1, "phoneId"    # I

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;

    .line 132
    .local v1, "psli":Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;
    invoke-virtual {v1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->getSimSlot()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 133
    return-object v1

    .line 135
    .end local v1    # "psli":Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private registerPhoneStateListenerInternal(II)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "phoneId"    # I

    .line 100
    new-instance v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/util/ImsPhoneStateManager;II)V

    .line 101
    .local v0, "psli":Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;
    iget-object v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerPhoneStateListenerInternal:"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListenEvent:I

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 107
    :cond_0
    return-void
.end method

.method private unRegisterPhoneStateListenerInternal(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->getPhoneStateListenerInternal(I)Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterPhoneStateListenerInternal, phoneStateListenerInternal["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is not exist. return.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->getPhoneStateListenerInternal(I)Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;

    move-result-object v0

    .line 122
    .local v0, "psli":Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;
    iget-object v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    sget-object v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerPhoneStateListenerInternal:"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method


# virtual methods
.method public hasListener(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerListener(Landroid/telephony/PhoneStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mSubManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getDefaultDataPhoneId(Landroid/telephony/SubscriptionManager;)I

    move-result v0

    .line 68
    .local v0, "phoneId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 70
    .local v1, "subId":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    .line 71
    return-void
.end method

.method public registerListener(Landroid/telephony/PhoneStateListener;II)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "registerListener:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerPhoneStateListenerInternal(II)V

    .line 77
    return-void
.end method

.method public unRegisterListener(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterPhoneStateListenerInternal(I)V

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method
