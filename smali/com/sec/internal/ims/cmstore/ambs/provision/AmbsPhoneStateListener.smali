.class public Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;
.super Ljava/lang/Object;
.source "AmbsPhoneStateListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mZcodeRequested:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private mIsPhoneServiceReady:Z

.field private mServiceStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mZcodeRequested:Z

    return-void
.end method

.method constructor <init>(Landroid/telephony/TelephonyManager;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Landroid/content/Context;)V
    .locals 1
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "controllerInterface"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p3, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mIsPhoneServiceReady:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mServiceStateListener:Landroid/telephony/PhoneStateListener;

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 28
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 29
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    .line 13
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mIsPhoneServiceReady:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;
    .param p1, "x1"    # Z

    .line 13
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mIsPhoneServiceReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    .line 13
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mZcodeRequested:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 13
    sput-boolean p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mZcodeRequested:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    .line 13
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object v0
.end method

.method private createPhoneServiceListener()V
    .locals 1

    .line 59
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mServiceStateListener:Landroid/telephony/PhoneStateListener;

    .line 70
    return-void
.end method


# virtual methods
.method public resumeListen()V
    .locals 3

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mZcodeRequested:Z

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mServiceStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 52
    return-void
.end method

.method public startListen()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->createPhoneServiceListener()V

    .line 34
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->resumeListen()V

    .line 35
    return-void
.end method

.method public stopListen()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mServiceStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->TAG:Ljava/lang/String;

    const-string v1, "Phone state listener was not initial, maybe provison started form the latest failed api. No need to close it."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    return-void
.end method
