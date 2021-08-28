.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
.super Landroid/content/ContentProvider;
.source "CapabilityProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_INFO_LOCAL_OFFLINE:Ljava/lang/String; = "local_offline;"

.field private static final ADDITIONAL_INFO_NONE:Ljava/lang/String; = ""

.field private static final ADDITIONAL_INFO_REMOTE_OFFLINE:Ljava/lang/String; = "remote_offline;"

.field private static final ADDITIONAL_INFO_REMOTE_ONLINE:Ljava/lang/String; = "fresh;"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.serviceprovider"

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityProvider"

.field private static final N_INCALL_SERVICE:I = 0x4

.field private static final N_LOOKUP_URI:I = 0x1

.field private static final N_LOOKUP_URI_ID:I = 0x2

.field private static final N_OPERATOR_RCS_VERSION:I = 0x7

.field private static final N_OWN_CAPS:I = 0x5

.field private static final N_RCS_BIG_DATA:I = 0x8

.field private static final N_RCS_ENABLED_STATIC:I = 0x6

.field private static final N_SIP_URI:I = 0x3

.field private static final OPTIONS_PATTERN:Ljava/util/regex/Pattern;

.field private static ready_ish:Z

.field private static ready_vsh:Z


# instance fields
.field private mAsyncResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataNetworkType:I

.field private mIsWifiConnected:Z

.field private mLastInCallUri:Lcom/sec/ims/util/ImsUri;

.field private final mLock:Ljava/lang/Object;

.field private mMatcher:Landroid/content/UriMatcher;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

.field private mService:Lcom/sec/ims/options/ICapabilityService;

.field private final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const-string v0, "\\?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    .line 110
    sput-boolean v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    .line 80
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    .line 83
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mIsWifiConnected:Z

    .line 953
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$2;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 963
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/ims/options/ICapabilityService;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
    .param p1, "x1"    # Lcom/sec/ims/options/ICapabilityService;

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/content/IntentFilter;
    .locals 1

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
    .param p1, "x1"    # I

    .line 73
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 73
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 73
    sput-boolean p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 73
    sput-boolean p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 73
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyInCallServicesChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 73
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->wakeup()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
    .param p1, "x1"    # Lcom/sec/ims/util/ImsUri;

    .line 73
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyCapabilityChange(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 73
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyOwnServicesChange()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    return-object v0
.end method

.method private createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has call composer feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 880
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 879
    return-object v0
.end method

.method private createChatbotChatSessionRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;

    .line 913
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 914
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    .line 913
    return-object v0
.end method

.method private createChatbotSlmRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;

    .line 920
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 921
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    .line 920
    return-object v0
.end method

.method private createExtendedbotRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;

    .line 927
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 928
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.xbotmessage\""

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    .line 927
    return-object v0
.end method

.method private createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 778
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 779
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 778
    return-object v0
.end method

.method private createFtInGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 787
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 788
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "ft-in-group-chat"

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 787
    return-object v0
.end method

.method private createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 769
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 770
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 769
    return-object v0
.end method

.method private createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 796
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 797
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 796
    return-object v0
.end method

.method private createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;

    .line 820
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 821
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    .line 820
    return-object v0
.end method

.method private createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;

    .line 813
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 814
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    .line 813
    return-object v0
.end method

.method private createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 760
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 761
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 760
    return-object v0
.end method

.method private createImageCameraShareRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;

    .line 869
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 870
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.contentsharing.action.IMAGE_SHARE_CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string v2, "Take a picture"

    aput-object v2, v0, v1

    .line 869
    return-object v0
.end method

.method private createImageFileShareRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;

    .line 861
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 862
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.contentsharing.action.IMAGE_SHARE_FILE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string v2, "Picture"

    aput-object v2, v0, v1

    .line 861
    return-object v0
.end method

.method private createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;

    .line 827
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 828
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    .line 827
    return-object v0
.end method

.method private static createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 1038
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1040
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1041
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.CSH_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1042
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1043
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1045
    return-object v0
.end method

.method private createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has post call feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 907
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 906
    return-object v0
.end method

.method private createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 844
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 845
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 844
    return-object v0
.end method

.method private createShareVideoRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;

    .line 853
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 854
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string v2, "Live video"

    aput-object v2, v0, v1

    .line 853
    return-object v0
.end method

.method private createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has shared map feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 889
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 888
    return-object v0
.end method

.method private createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has shared sketch feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 898
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 897
    return-object v0
.end method

.method private createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 805
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 806
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 805
    return-object v0
.end method

.method private createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "sip"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "additionalInfo"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .line 835
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 836
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    aput-object p6, v0, v1

    .line 835
    return-object v0
.end method

.method private getAsyncCapexResult(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;
    .locals 2
    .param p1, "identity"    # Lcom/sec/ims/util/ImsUri;

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    .line 247
    .local v0, "capex":Lcom/sec/ims/options/Capabilities;
    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    return-object v0
.end method

.method private getImsUriListFromQuery(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "urisToQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 694
    if-nez p1, :cond_0

    .line 695
    const-string v0, "CapabilityProvider"

    const-string v1, "getImsUriListFromQuery: null uris"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v0, 0x0

    return-object v0

    .line 698
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v0, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/util/ImsUri;>;"
    const-string v1, "\\s*,\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "uriStringList":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 701
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 702
    .local v4, "uriString":Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 703
    .local v5, "sipUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 704
    goto :goto_1

    .line 706
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v4    # "uriString":Ljava/lang/String;
    .end local v5    # "sipUri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    :cond_3
    return-object v0
.end method

.method private getRequeryStrategyId(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;
    .locals 1
    .param p1, "extraString"    # Ljava/lang/String;

    .line 724
    const-string v0, "disable_requery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0

    .line 730
    :cond_0
    const-string v0, "force_requery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0

    .line 736
    :cond_1
    const-string v0, "force_requery_uce"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0

    .line 741
    :cond_2
    const-string v0, "force_requery_sync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0

    .line 746
    :cond_3
    const-string v0, "msg_conditional_requery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0

    .line 755
    :cond_4
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0
.end method

.method private notifyCapabilityChange(Lcom/sec/ims/util/ImsUri;)V
    .locals 3
    .param p1, "updated"    # Lcom/sec/ims/util/ImsUri;

    .line 980
    const-string v0, "CapabilityProvider"

    const-string v1, "notifyCapabilityChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCapabilityChange: uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 984
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.samsung.rcs.serviceprovider/sip/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 985
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 986
    return-void
.end method

.method private notifyInCallServicesChange()V
    .locals 3

    .line 996
    const-string v0, "CapabilityProvider"

    const-string v1, "notifyInCallServicesChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 999
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "content://com.samsung.rcs.serviceprovider/incall"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1000
    return-void
.end method

.method private notifyOwnServicesChange()V
    .locals 3

    .line 989
    const-string v0, "CapabilityProvider"

    const-string v1, "notifyOwnServicesChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 992
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "content://com.samsung.rcs.serviceprovider/own"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 993
    return-void
.end method

.method private queryIncallService(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .locals 11
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 462
    .local p1, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "CapabilityProvider"

    const-string/jumbo v1, "queryIncallService"

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 464
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "phoneNumber":Ljava/lang/String;
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->INCALL_PROJECTION:[Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 469
    .local v3, "mc":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    .line 470
    .local v4, "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    invoke-virtual {v4, v1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 472
    .local v2, "teluri":Lcom/sec/ims/util/ImsUri;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual {p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v6

    invoke-interface {v5, v2, v6, p3}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v5

    .line 473
    .local v5, "capex":Lcom/sec/ims/options/Capabilities;
    sget-object v6, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-virtual {p2, v6}, Lcom/sec/ims/options/CapabilityRefreshType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 474
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->waitForUpdate(Lcom/sec/ims/util/ImsUri;)V

    .line 475
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getAsyncCapexResult(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v6

    move-object v5, v6

    .line 477
    :cond_0
    if-nez v5, :cond_1

    .line 478
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryIncallService: Capabilities not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p3, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    .line 480
    return-object v3

    .line 483
    :cond_1
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    .line 484
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v5, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-nez v6, :cond_2

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {v5, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryIncallService: No hasFeature for ish, vsh "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p3, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    return-object v3

    .line 489
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-interface {v6, p3}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v6

    .line 490
    .local v6, "capex_own":Lcom/sec/ims/options/Capabilities;
    if-nez v6, :cond_3

    .line 491
    const-string/jumbo v7, "queryIncallService: own capex is null"

    invoke-static {v0, p3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 492
    return-object v3

    .line 493
    :cond_3
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v7

    if-nez v7, :cond_4

    .line 494
    const-string/jumbo v7, "queryIncallService: own capex is not available"

    invoke-static {v0, p3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 495
    return-object v3

    .line 496
    :cond_4
    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v6, v7}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v7

    if-nez v7, :cond_5

    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 497
    invoke-virtual {v6, v7}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 498
    const-string/jumbo v7, "queryIncallService: No hasFeature for ish, vsh in own capex"

    invoke-static {v0, p3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 499
    return-object v3

    .line 502
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "queryIncallService: ready_ish = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", ready_vsh = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, p3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 504
    iget v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mIsWifiConnected:Z

    if-nez v7, :cond_6

    .line 505
    const/4 v7, 0x0

    sput-boolean v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    .line 508
    :cond_6
    const/4 v7, 0x0

    .line 509
    .local v7, "hasfeature_ish":Z
    sget-boolean v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    if-eqz v8, :cond_7

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v5, v8}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v8

    if-eqz v8, :cond_7

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    .line 510
    invoke-virtual {v6, v8}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 511
    const/4 v7, 0x1

    .line 514
    :cond_7
    const/4 v8, 0x0

    .line 515
    .local v8, "hasfeature_vsh":Z
    sget-boolean v9, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    if-eqz v9, :cond_8

    sget v9, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {v5, v9}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v9

    if-eqz v9, :cond_8

    sget v9, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 516
    invoke-virtual {v6, v9}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 517
    const/4 v8, 0x1

    .line 520
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "queryIncallService: hasfeature_ish = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, p3, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 521
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "queryIncallService: hasfeature_vsh = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, p3, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 523
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "remoteUri":Ljava/lang/String;
    const/4 v9, 0x0

    .line 525
    .local v9, "rowId":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rowId":I
    .local v10, "rowId":I
    invoke-direct {p0, v9, v8, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createShareVideoRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 526
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rowId":I
    .restart local v9    # "rowId":I
    invoke-direct {p0, v10, v7, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImageFileShareRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 527
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rowId":I
    .restart local v10    # "rowId":I
    invoke-direct {p0, v9, v7, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImageCameraShareRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v0    # "remoteUri":Ljava/lang/String;
    .end local v2    # "teluri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .end local v5    # "capex":Lcom/sec/ims/options/Capabilities;
    .end local v6    # "capex_own":Lcom/sec/ims/options/Capabilities;
    .end local v7    # "hasfeature_ish":Z
    .end local v8    # "hasfeature_vsh":Z
    .end local v10    # "rowId":I
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 531
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v3
.end method

.method private queryLookupUriId(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .locals 25
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 309
    .local p1, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    const-string v11, "CapabilityProvider"

    const-string/jumbo v0, "queryLookupUriId"

    invoke-static {v11, v10, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x1

    sub-int/2addr v0, v12

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 312
    .local v13, "contactId":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 314
    .local v14, "lookupId":Ljava/lang/String;
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v15, v0

    .line 318
    .local v15, "mc":Landroid/database/MatrixCursor;
    :try_start_0
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v1

    invoke-interface {v0, v13, v1, v10}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 319
    .local v0, "capexList":[Lcom/sec/ims/options/Capabilities;
    if-nez v0, :cond_0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryLookupUriId: Capabilities not found for contactId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v10, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    return-object v15

    .line 324
    :cond_0
    const/4 v1, 0x0

    .line 325
    .local v1, "rowId":I
    const-string/jumbo v2, "remote_offline;"

    .line 326
    .local v2, "additionalInfo":Ljava/lang/String;
    array-length v7, v0

    const/16 v16, 0x0

    move/from16 v6, v16

    move-object/from16 v24, v2

    move v2, v1

    move-object/from16 v1, v24

    .local v1, "additionalInfo":Ljava/lang/String;
    .local v2, "rowId":I
    :goto_0
    if-ge v6, v7, :cond_7

    aget-object v3, v0, v6

    move-object v5, v3

    .line 327
    .local v5, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result v3

    move/from16 v17, v3

    .line 328
    .local v17, "isExpired":Z
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    move/from16 v18, v3

    .line 330
    .local v18, "isAvailable":Z
    if-eqz v18, :cond_2

    .line 331
    if-eqz v17, :cond_1

    .line 332
    const-string v3, ""

    move-object v1, v3

    move-object/from16 v19, v1

    goto :goto_1

    .line 334
    :cond_1
    const-string v3, "fresh;"

    move-object v1, v3

    move-object/from16 v19, v1

    goto :goto_1

    .line 330
    :cond_2
    move-object/from16 v19, v1

    .line 338
    .end local v1    # "additionalInfo":Ljava/lang/String;
    .local v19, "additionalInfo":Ljava/lang/String;
    :goto_1
    add-int/lit8 v20, v2, 0x1

    .end local v2    # "rowId":I
    .local v20, "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v5, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_4

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 339
    invoke-virtual {v5, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v3, v16

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v12

    .line 340
    :goto_3
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v22

    .line 338
    move-object/from16 v1, p0

    move-object v12, v5

    .end local v5    # "capex":Lcom/sec/ims/options/Capabilities;
    .local v12, "capex":Lcom/sec/ims/options/Capabilities;
    move-object/from16 v5, v21

    move/from16 v21, v6

    move-object/from16 v6, v19

    move/from16 v23, v7

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 341
    add-int/lit8 v22, v20, 0x1

    .end local v20    # "rowId":I
    .local v22, "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v12, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 342
    invoke-virtual {v12, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v3, v16

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, 0x1

    .line 343
    :goto_5
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 341
    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 344
    add-int/lit8 v20, v22, 0x1

    .end local v22    # "rowId":I
    .restart local v20    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v12, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 345
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 344
    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 346
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "rowId":I
    .local v7, "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v12, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 347
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v22

    .line 346
    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v6, v19

    move-object/from16 v20, v0

    move v0, v7

    .end local v7    # "rowId":I
    .local v0, "rowId":I
    .local v20, "capexList":[Lcom/sec/ims/options/Capabilities;
    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 348
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "rowId":I
    .restart local v7    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v12, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 349
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-direct {v8, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 350
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "rowId":I
    .restart local v2    # "rowId":I
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v12, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    .line 351
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-direct {v8, v7, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 352
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "rowId":I
    .restart local v0    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v12, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 353
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 352
    move-object/from16 v1, p0

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 354
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "rowId":I
    .restart local v2    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v12, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 355
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-direct {v8, v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 356
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "rowId":I
    .restart local v0    # "rowId":I
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v12, v3, v4}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 357
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 356
    move-object/from16 v1, p0

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v12    # "capex":Lcom/sec/ims/options/Capabilities;
    .end local v17    # "isExpired":Z
    .end local v18    # "isAvailable":Z
    add-int/lit8 v6, v21, 0x1

    move v2, v0

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v7, v23

    const/4 v12, 0x1

    goto/16 :goto_0

    .end local v19    # "additionalInfo":Ljava/lang/String;
    .end local v20    # "capexList":[Lcom/sec/ims/options/Capabilities;
    .local v0, "capexList":[Lcom/sec/ims/options/Capabilities;
    .restart local v1    # "additionalInfo":Ljava/lang/String;
    .restart local v2    # "rowId":I
    :cond_7
    move-object/from16 v20, v0

    .line 361
    .end local v0    # "capexList":[Lcom/sec/ims/options/Capabilities;
    .end local v1    # "additionalInfo":Ljava/lang/String;
    .end local v2    # "rowId":I
    goto :goto_6

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryLookupUriId: no uris exist for lookup, returning empty response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v10, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6
    return-object v15
.end method

.method private queryOperatorRcsVersion(I)Landroid/database/Cursor;
    .locals 4
    .param p1, "phoneId"    # I

    .line 639
    const-string v0, "CapabilityProvider"

    const-string/jumbo v1, "queryOperatorRcsVersion"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 641
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "OperatorRcsVersion"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 643
    .local v0, "mc":Landroid/database/MatrixCursor;
    const-string/jumbo v1, "rcs_phase_version"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "rcsPhaseVersion":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 645
    return-object v0
.end method

.method private queryOwnCaps(I)Landroid/database/Cursor;
    .locals 17
    .param p1, "phoneId"    # I

    .line 535
    move-object/from16 v8, p0

    move/from16 v9, p1

    const-string v0, ""

    const-string v1, "CapabilityProvider"

    const-string/jumbo v2, "queryOwnCaps"

    invoke-static {v1, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 537
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v10, v2

    .line 540
    .local v10, "mc":Landroid/database/MatrixCursor;
    :try_start_0
    iget-object v2, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-interface {v2, v9}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    move-object v11, v2

    .line 541
    .local v11, "capex":Lcom/sec/ims/options/Capabilities;
    if-nez v11, :cond_0

    .line 542
    return-object v10

    .line 545
    :cond_0
    move-object v2, v0

    .line 546
    .local v2, "ownUri":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 547
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v12, v2

    goto :goto_0

    .line 546
    :cond_1
    move-object v12, v2

    .line 550
    .end local v2    # "ownUri":Ljava/lang/String;
    .local v12, "ownUri":Ljava/lang/String;
    :goto_0
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "local_offline;"

    .line 551
    .local v0, "additionalInfo":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryOwnCaps: RCS additionalInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 553
    const/4 v2, 0x0

    .line 554
    .local v2, "rowId":I
    add-int/lit8 v13, v2, 0x1

    .end local v2    # "rowId":I
    .local v13, "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v1, :cond_4

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 555
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v14

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v15

    .line 556
    :goto_3
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 554
    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 557
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "rowId":I
    .local v16, "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 558
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v14

    goto :goto_5

    :cond_6
    :goto_4
    move v3, v15

    .line 559
    :goto_5
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 557
    move-object/from16 v1, p0

    move v2, v13

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 560
    add-int/lit8 v13, v16, 0x1

    .end local v16    # "rowId":I
    .restart local v13    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 561
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 560
    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 562
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "rowId":I
    .local v14, "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 563
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 562
    move-object/from16 v1, p0

    move v2, v13

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtInGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 564
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "rowId":I
    .restart local v13    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 565
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 564
    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 566
    add-int/lit8 v1, v13, 0x1

    .end local v13    # "rowId":I
    .local v1, "rowId":I
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v11, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    invoke-direct {v8, v13, v2, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 567
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "rowId":I
    .restart local v2    # "rowId":I
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v11, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    invoke-direct {v8, v1, v3, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 568
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "rowId":I
    .restart local v1    # "rowId":I
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-virtual {v11, v3, v4}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    invoke-direct {v8, v2, v3, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createChatbotChatSessionRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 569
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "rowId":I
    .restart local v2    # "rowId":I
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-virtual {v11, v3, v4}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    invoke-direct {v8, v1, v3, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createChatbotSlmRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 570
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "rowId":I
    .local v3, "rowId":I
    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-virtual {v11, v4, v5}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    invoke-direct {v8, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createExtendedbotRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 571
    add-int/lit8 v13, v3, 0x1

    .end local v3    # "rowId":I
    .restart local v13    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v4

    .line 572
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 571
    move-object/from16 v1, p0

    move v2, v3

    move v3, v4

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 573
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "rowId":I
    .restart local v2    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    invoke-direct {v8, v13, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 574
    add-int/lit8 v13, v2, 0x1

    .end local v2    # "rowId":I
    .restart local v13    # "rowId":I
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v11, v3, v4}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 575
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 574
    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 576
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "rowId":I
    .restart local v14    # "rowId":I
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 577
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 576
    move-object/from16 v1, p0

    move v2, v13

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 578
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "rowId":I
    .restart local v13    # "rowId":I
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 579
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 578
    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 580
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "rowId":I
    .restart local v14    # "rowId":I
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 581
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 580
    move-object/from16 v1, p0

    move v2, v13

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 582
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "rowId":I
    .restart local v13    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 583
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 582
    move-object/from16 v1, p0

    move v2, v14

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 584
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "rowId":I
    .restart local v14    # "rowId":I
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 585
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 584
    move-object/from16 v1, p0

    move v2, v13

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v0    # "additionalInfo":Ljava/lang/String;
    .end local v11    # "capex":Lcom/sec/ims/options/Capabilities;
    .end local v12    # "ownUri":Ljava/lang/String;
    .end local v14    # "rowId":I
    goto :goto_6

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 589
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6
    return-object v10
.end method

.method private queryRcsBigData(Ljava/util/List;I)Landroid/database/Cursor;
    .locals 16
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 649
    .local p1, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v1, p2

    const-string v0, "CapabilityProvider"

    const-string/jumbo v2, "queryRcsBigData"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 651
    new-instance v2, Landroid/database/MatrixCursor;

    const-string v3, "RemoteRcsStatus"

    const-string v4, "RemoteLegacyLatching"

    const-string v5, "PhoneNumber"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 652
    .local v2, "mc":Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .line 653
    .local v3, "remoteRcsStatus":Ljava/lang/String;
    const/4 v4, 0x0

    .line 654
    .local v4, "remoteLegacyLatching":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v7, p1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 657
    .local v5, "phoneNumber":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    .line 658
    .local v8, "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    invoke-virtual {v8, v5, v6}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 660
    .local v9, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    move-object/from16 v10, p0

    :try_start_1
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    sget-object v12, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 661
    invoke-virtual {v12}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v12

    .line 660
    invoke-interface {v11, v9, v12, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v11

    .line 662
    .local v11, "capex":Lcom/sec/ims/options/Capabilities;
    if-nez v11, :cond_0

    .line 663
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "queryRcsBigData: Capabilities not found for "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-object v2

    .line 667
    :cond_0
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->hasNoRcsFeatures()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_1

    .line 668
    const/4 v3, 0x0

    goto :goto_1

    .line 670
    :cond_1
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v14

    .line 671
    .local v14, "mAvailableFeatures":J
    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v6, v12

    cmp-long v6, v14, v6

    if-eqz v6, :cond_2

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v6, v6

    cmp-long v6, v14, v6

    if-eqz v6, :cond_2

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v6, v6

    cmp-long v6, v14, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v13

    .line 675
    .local v6, "isAvailable":Z
    :goto_0
    if-eqz v6, :cond_3

    .line 676
    const-string v7, "fresh;"

    move-object v3, v7

    goto :goto_1

    .line 678
    :cond_3
    const-string/jumbo v7, "remote_offline;"

    move-object v3, v7

    .line 681
    .end local v6    # "isAvailable":Z
    .end local v14    # "mAvailableFeatures":J
    :goto_1
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result v6

    move v4, v6

    .line 683
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryRcsBigData: remoteRcsStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", remoteLegacyLatching = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", phoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 686
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v13

    if-eqz v4, :cond_4

    const-string/jumbo v6, "true"

    goto :goto_2

    :cond_4
    const-string v6, "false"

    :goto_2
    const/4 v7, 0x1

    aput-object v6, v0, v7

    const/4 v6, 0x2

    aput-object v5, v0, v6

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 689
    .end local v8    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .end local v9    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    .end local v11    # "capex":Lcom/sec/ims/options/Capabilities;
    goto :goto_4

    .line 687
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 690
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    return-object v2
.end method

.method private queryRcsEnabledStatic(I)Landroid/database/Cursor;
    .locals 16
    .param p1, "phoneId"    # I

    .line 593
    move/from16 v0, p1

    const-string v1, "CapabilityProvider"

    const-string/jumbo v2, "queryRcsEnabledStatic"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 595
    new-instance v2, Landroid/database/MatrixCursor;

    const-string v3, "EnableRCS"

    const-string v4, "EnableRCSchat"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 596
    .local v2, "mc":Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .line 597
    .local v3, "isEnableRcs":Z
    const/4 v4, 0x0

    .line 599
    .local v4, "isEnableRcsChat":Z
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const-string v8, ", isEnableRcsChat = "

    const-string/jumbo v9, "true"

    const-string v10, "false"

    const/4 v11, 0x0

    if-eqz v5, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 600
    move-object/from16 v5, p0

    iget-object v12, v5, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {v12, v0}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v12

    .line 601
    .local v12, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 602
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/ims/settings/ImsProfile;

    .line 603
    .local v14, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 604
    invoke-virtual {v14}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcsChat()Z

    move-result v4

    .line 605
    invoke-virtual {v14}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v3

    .line 606
    goto :goto_1

    .line 608
    .end local v14    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 611
    :cond_1
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "queryRcsEnabledStatic: SimMobility, isEnableRcs = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v0, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 612
    new-array v1, v7, [Ljava/lang/String;

    .line 613
    if-eqz v3, :cond_2

    move-object v7, v9

    goto :goto_2

    :cond_2
    move-object v7, v10

    :goto_2
    aput-object v7, v1, v11

    .line 614
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v9, v10

    :goto_3
    aput-object v9, v1, v6

    .line 612
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 615
    return-object v2

    .line 599
    .end local v12    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_4
    move-object/from16 v5, p0

    .line 619
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v12

    .line 620
    .local v12, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object v13

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    invoke-static {v13, v0}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;

    move-result-object v13

    .line 621
    .local v13, "cscSettings":Landroid/content/ContentValues;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Landroid/content/ContentValues;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 622
    const-string v14, "EnableRCS"

    .line 623
    .local v14, "enableRcs":Ljava/lang/String;
    const-string v15, "EnableRCSchat"

    .line 625
    .local v15, "enableRcsChat":Ljava/lang/String;
    invoke-static {v13, v14, v11}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v3

    .line 626
    invoke-static {v13, v15, v11}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v4

    .line 627
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "queryRcsEnabledStatic: Customer, isEnableRcs = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 628
    .end local v14    # "enableRcs":Ljava/lang/String;
    .end local v15    # "enableRcsChat":Ljava/lang/String;
    goto :goto_5

    .line 629
    :cond_6
    const-string/jumbo v6, "queryRcsEnabledStatic: cscSettings is null, isEnableRcs = false, isEnableRcsChat = false"

    invoke-static {v1, v0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 632
    :goto_5
    new-array v1, v7, [Ljava/lang/String;

    .line 633
    if-eqz v3, :cond_7

    move-object v6, v9

    goto :goto_6

    :cond_7
    move-object v6, v10

    :goto_6
    const/4 v7, 0x0

    aput-object v6, v1, v7

    .line 634
    if-eqz v4, :cond_8

    goto :goto_7

    :cond_8
    move-object v9, v10

    :goto_7
    const/4 v6, 0x1

    aput-object v9, v1, v6

    .line 632
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 635
    return-object v2
.end method

.method private querySipUri([Ljava/lang/String;Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .locals 22
    .param p1, "projection"    # [Ljava/lang/String;
    .param p3, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 366
    .local p2, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move/from16 v9, p4

    const-string v0, "CapabilityProvider"

    const-string/jumbo v1, "querySipUri"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v10, v1

    .line 370
    .local v10, "mc":Landroid/database/MatrixCursor;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    move-object/from16 v12, p2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v8, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getImsUriListFromQuery(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 371
    .local v13, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/util/ImsUri;>;"
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 377
    :cond_0
    :try_start_0
    iget-object v1, v8, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    .line 378
    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    .line 377
    invoke-interface {v1, v13, v2, v3, v9}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    move-object v14, v1

    .line 379
    .local v14, "capexList":[Lcom/sec/ims/options/Capabilities;
    if-nez v14, :cond_1

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySipUri: Capabilities not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    return-object v10

    .line 383
    :cond_1
    array-length v15, v14

    const/16 v16, 0x0

    move/from16 v7, v16

    :goto_0
    if-ge v7, v15, :cond_c

    aget-object v1, v14, v7

    move-object v6, v1

    .line 384
    .local v6, "capex":Lcom/sec/ims/options/Capabilities;
    if-nez v6, :cond_2

    .line 385
    move/from16 v21, v7

    goto/16 :goto_6

    .line 387
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->FEATURE_TAG_PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 389
    const-string/jumbo v1, "querySipUri: return feature tags."

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getFeatureTag()[Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "tags":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_3

    .line 393
    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 395
    .end local v1    # "tags":[Ljava/lang/String;
    :cond_3
    move/from16 v21, v7

    goto/16 :goto_6

    .line 396
    :cond_4
    const/4 v2, 0x0

    .line 397
    .local v2, "rowId":I
    const-string/jumbo v1, "querySipUri: return service info."

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 403
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->hasNoRcsFeatures()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 404
    const/4 v1, 0x0

    move-object v5, v1

    .local v1, "additionalInfo":Ljava/lang/String;
    goto :goto_1

    .line 406
    .end local v1    # "additionalInfo":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result v1

    .line 407
    .local v1, "isExpired":Z
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    .line 409
    .local v3, "isAvailable":Z
    if-eqz v3, :cond_7

    .line 410
    if-eqz v1, :cond_6

    .line 411
    const-string v4, ""

    move-object v5, v4

    .local v4, "additionalInfo":Ljava/lang/String;
    goto :goto_1

    .line 413
    .end local v4    # "additionalInfo":Ljava/lang/String;
    :cond_6
    const-string v4, "fresh;"

    move-object v5, v4

    .restart local v4    # "additionalInfo":Ljava/lang/String;
    goto :goto_1

    .line 416
    .end local v4    # "additionalInfo":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "remote_offline;"

    move-object v5, v4

    .line 419
    .end local v1    # "isExpired":Z
    .end local v3    # "isAvailable":Z
    .local v5, "additionalInfo":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "querySipUri: RCS additionalInfo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 421
    add-int/lit8 v17, v2, 0x1

    .end local v2    # "rowId":I
    .local v17, "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v6, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_9

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 422
    invoke-virtual {v6, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v3, v16

    goto :goto_3

    :cond_9
    :goto_2
    move v3, v11

    .line 423
    :goto_3
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 421
    move-object/from16 v1, p0

    move-object/from16 v20, v5

    .end local v5    # "additionalInfo":Ljava/lang/String;
    .local v20, "additionalInfo":Ljava/lang/String;
    move-object/from16 v5, v18

    move-object v11, v6

    .end local v6    # "capex":Lcom/sec/ims/options/Capabilities;
    .local v11, "capex":Lcom/sec/ims/options/Capabilities;
    move-object/from16 v6, v20

    move/from16 v21, v7

    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 424
    add-int/lit8 v19, v17, 0x1

    .end local v17    # "rowId":I
    .local v19, "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_b

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 425
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    move/from16 v3, v16

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v3, 0x1

    .line 426
    :goto_5
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 424
    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 427
    add-int/lit8 v17, v19, 0x1

    .end local v19    # "rowId":I
    .restart local v17    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 428
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 427
    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 429
    add-int/lit8 v7, v17, 0x1

    .end local v17    # "rowId":I
    .local v7, "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 430
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 429
    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object/from16 v6, v20

    move v12, v7

    .end local v7    # "rowId":I
    .local v12, "rowId":I
    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 431
    add-int/lit8 v7, v12, 0x1

    .end local v12    # "rowId":I
    .restart local v7    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 432
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-direct {v8, v12, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 433
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "rowId":I
    .restart local v2    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 434
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-direct {v8, v7, v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 435
    add-int/lit8 v12, v2, 0x1

    .end local v2    # "rowId":I
    .restart local v12    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 436
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 435
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 437
    add-int/lit8 v2, v12, 0x1

    .end local v12    # "rowId":I
    .restart local v2    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 438
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-direct {v8, v12, v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 439
    add-int/lit8 v12, v2, 0x1

    .end local v2    # "rowId":I
    .restart local v12    # "rowId":I
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 440
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 439
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 441
    add-int/lit8 v17, v12, 0x1

    .end local v12    # "rowId":I
    .restart local v17    # "rowId":I
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 442
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 441
    move-object/from16 v1, p0

    move v2, v12

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 443
    add-int/lit8 v12, v17, 0x1

    .end local v17    # "rowId":I
    .restart local v12    # "rowId":I
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 444
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 443
    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 445
    add-int/lit8 v17, v12, 0x1

    .end local v12    # "rowId":I
    .restart local v17    # "rowId":I
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 446
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 445
    move-object/from16 v1, p0

    move v2, v12

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 447
    add-int/lit8 v12, v17, 0x1

    .end local v17    # "rowId":I
    .restart local v12    # "rowId":I
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 448
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 447
    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 449
    add-int/lit8 v17, v12, 0x1

    .end local v12    # "rowId":I
    .restart local v17    # "rowId":I
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 450
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 449
    move-object/from16 v1, p0

    move v2, v12

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v11    # "capex":Lcom/sec/ims/options/Capabilities;
    .end local v17    # "rowId":I
    .end local v20    # "additionalInfo":Ljava/lang/String;
    :goto_6
    add-int/lit8 v7, v21, 0x1

    move-object/from16 v12, p2

    const/4 v11, 0x1

    goto/16 :goto_0

    .line 457
    .end local v14    # "capexList":[Lcom/sec/ims/options/Capabilities;
    :cond_c
    nop

    .line 458
    return-object v10

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 455
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->close()V

    .line 456
    const/4 v1, 0x0

    return-object v1

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_d
    :goto_7
    const-string/jumbo v1, "querySipUri: no valid uri to request"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 373
    return-object v10
.end method

.method private waitForUpdate(Lcom/sec/ims/util/ImsUri;)V
    .locals 4
    .param p1, "remote"    # Lcom/sec/ims/util/ImsUri;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "waitForUpdate: remote uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityProvider"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 231
    monitor-exit v0

    .line 236
    goto :goto_0

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
    .end local p1    # "remote":Lcom/sec/ims/util/ImsUri;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
    .restart local p1    # "remote":Lcom/sec/ims/util/ImsUri;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 237
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method private wakeup()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 1014
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1009
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 9

    .line 114
    const-string v0, "CapabilityProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    .line 120
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 121
    const-string v3, "com.samsung.rcs.serviceprovider"

    const-string v4, "lookup/*/#"

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v4, "lookup/*"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v4, "sip/*"

    const/4 v6, 0x3

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v4, "incall/*"

    const/4 v6, 0x4

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v4, "own"

    const/4 v6, 0x5

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v4, "rcs_enabled_static"

    const/4 v6, 0x6

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v4, "operator_rcs_version"

    const/4 v6, 0x7

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v4, "rcs_big_data/*"

    const/16 v6, 0x8

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    const-string v1, "Connecting to CapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v3, "com.sec.internal.ims.imsservice.CapabilityService"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    .line 137
    new-instance v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    const/16 v4, 0x40

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    .line 138
    .local v1, "phoneStateManager":Lcom/sec/internal/ims/util/ImsPhoneStateManager;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;)V

    .line 140
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 141
    .local v3, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 142
    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 143
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 144
    .local v4, "request":Landroid/net/NetworkRequest;
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v4, v6}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 146
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    invoke-direct {v7, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    sget-object v8, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v6, v0, v7, v5, v8}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 222
    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query(Uri, String[], String, String[], String) - uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", args: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "CapabilityProvider"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v0, :cond_0

    .line 259
    const-string/jumbo v0, "query before provider was started! Returning empty response"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 263
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "split":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 268
    .local v2, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 269
    .local v3, "extraString":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getRequeryStrategyId(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v4

    .line 271
    .local v4, "refreshType":Lcom/sec/ims/options/CapabilityRefreshType;
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v5

    .line 273
    .local v5, "phoneId":I
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 303
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UNDEFINED CATEGORY! | Operation for uri: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Operation not supported for uri: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "N_RCS_BIG_DATA | Operation for uri: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    invoke-direct {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryRcsBigData(Ljava/util/List;I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 295
    :pswitch_1
    const-string v6, "N_OPERATOR_RCS_VERSION"

    invoke-static {v1, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryOperatorRcsVersion(I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 291
    :pswitch_2
    const-string v6, "N_RCS_ENABLED_STATIC"

    invoke-static {v1, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryRcsEnabledStatic(I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 287
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "N_OWN_CAPS | Operation for uri: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryOwnCaps(I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 283
    :pswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "N_INCALL_SERVICE | Operation for uri: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    invoke-direct {p0, v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryIncallService(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 279
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "N_SIP_URI | Operation for uri: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    invoke-direct {p0, p2, v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->querySipUri([Ljava/lang/String;Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 275
    :pswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "N_LOOKUP_URI_ID | Operation for uri: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    invoke-direct {p0, v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryLookupUriId(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 1019
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
