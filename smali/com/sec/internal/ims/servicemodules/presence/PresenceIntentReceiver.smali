.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;
.super Ljava/lang/Object;
.source "PresenceIntentReceiver.java"


# static fields
.field static final INTENT_ACTION_TRIGGER_OMADM_TREE_SYNC:Ljava/lang/String; = "com.samsung.sdm.START_DM_SYNC_SESSION"

.field static final INTENT_BAD_EVENT_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.presence.bad_event_timeout"

.field static final INTENT_EXTRA_KEY_PHONE_ID:Ljava/lang/String; = "KEY_PHONE_ID"

.field static final INTENT_EXTRA_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "KEY_SUBSCRIPTION_ID"

.field static final INTENT_PERIODIC_PUBLISH_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.presence.publish_timeout"

.field static final INTENT_RETRY_PUBLISH:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.presence.retry_publish"

.field static final INTENT_RETRY_SUBSCRIBE:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.presence.retry_subscribe"

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceIntentReceiver"

.field static mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private static mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

.field static mSubscribeRetryIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$2;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$2;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mSubscribeRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V
    .locals 0
    .param p1, "presenceModule"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sput-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 32
    return-void
.end method

.method static synthetic access$000()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
    .locals 1

    .line 13
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    return-object v0
.end method


# virtual methods
.method getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.internal.ims.servicemodules.presence.publish_timeout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v1, "com.sec.internal.ims.servicemodules.presence.bad_event_timeout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "com.sec.internal.ims.servicemodules.presence.retry_publish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    return-object v0
.end method

.method getSubscribeRetryIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.internal.ims.servicemodules.presence.retry_subscribe"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "urn"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "subscriptionid"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 84
    return-object v0
.end method
