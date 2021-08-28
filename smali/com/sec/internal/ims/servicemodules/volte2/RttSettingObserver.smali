.class public Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;
.super Ljava/lang/Object;
.source "RttSettingObserver.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static NAME:Ljava/lang/String;

.field private static rttSettingDb:Ljava/lang/String;

.field private static rttSettingDb1:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRttSettingObserver:Landroid/database/ContentObserver;

.field private mRttSettingObserver1:Landroid/database/ContentObserver;

.field private mVsm:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->NAME:Ljava/lang/String;

    .line 12
    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->LOG_TAG:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "preferred_rtt_mode"

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->rttSettingDb:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "preferred_rtt_mode1"

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->rttSettingDb1:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vsm"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mVsm:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mRttSettingObserver:Landroid/database/ContentObserver;

    .line 43
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$2;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mRttSettingObserver1:Landroid/database/ContentObserver;

    .line 19
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mVsm:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    .line 10
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->rttSettingDb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    .line 10
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mVsm:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->rttSettingDb1:Ljava/lang/String;

    return-object v0
.end method

.method private registerRttSettingObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->rttSettingDb:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mRttSettingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->rttSettingDb1:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mRttSettingObserver1:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->registerRttSettingObserver(Landroid/content/Context;)V

    .line 27
    :cond_0
    return-void
.end method
