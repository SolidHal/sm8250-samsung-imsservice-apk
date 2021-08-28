.class public Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;
.super Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;
.source "VideoShareModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;


# static fields
.field private static final DISABLED_ALL_COVERAGES:I = 0x0

.field private static final ENABLED_3G_COVERAGES:I = 0x4

.field private static final ENABLED_ALL_COVERAGES:I = 0x1

.field private static final ENABLED_HSPA_COVERAGES:I = 0x8

.field private static final ENABLED_LTE_COVERAGES:I = 0x10

.field private static final ENABLED_WLAN_COVERAGES:I = 0x2

.field private static final EVENT_CANCEL_SHARE:I = 0x5

.field private static final EVENT_INCOMING_SESSION:I = 0x2

.field private static final EVENT_SESSION_ESTABLISHED:I = 0x3

.field private static final EVENT_SESSION_TEMINATED:I = 0x4

.field private static final EXTRA_SESSIONID:Ljava/lang/String;

.field private static final INTENT_MAX_DURATION_TIME:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mHasVideoShareSupport:[Z

.field private final mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

.field private mInComingTerminateId:I

.field private mInitialFeatures:[J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkType:[I

.field private mRegistrationId:I

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private mVsAuth:[I

.field private mVshInComingEntered:Z

.field private final mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

.field private maxDurationTime:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->NAME:Ljava/lang/String;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".max_duration_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->INTENT_MAX_DURATION_TIME:Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SessionID"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->EXTRA_SESSIONID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "vshServiceInterface"    # Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 92
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->maxDurationTime:[I

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRegistrationId:I

    .line 101
    new-array v2, v0, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    .line 105
    new-array v2, v0, [Z

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    .line 109
    new-array v2, v0, [J

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInitialFeatures:[J

    .line 136
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshInComingEntered:Z

    .line 137
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInComingTerminateId:I

    .line 141
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    .line 159
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    .line 147
    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance(Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;)Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    .line 148
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    .line 149
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->INTENT_MAX_DURATION_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 154
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->INTENT_MAX_DURATION_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->EXTRA_SESSIONID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->maxDurationTime:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 75
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInComingTerminateId:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;
    .param p1, "x1"    # I

    .line 75
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInComingTerminateId:I

    return p1
.end method

.method static synthetic access$602(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshInComingEntered:Z

    return p1
.end method

.method private blurNetworkType(I)I
    .locals 2
    .param p1, "network"    # I

    .line 757
    const/4 v0, 0x1

    const/16 v1, 0x10

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 768
    return p1

    .line 766
    :cond_0
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 761
    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private disableVshFeature()V
    .locals 3

    .line 512
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disableVshFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v0, "CapabilityDiscoveryModule"

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->createChannel(Ljava/lang/String;Landroid/os/Handler;)Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;

    move-result-object v0

    .line 515
    .local v0, "chan":Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->disableFeature(J)V

    .line 516
    return-void
.end method

.method private processCallStateChanged(ILjava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p2, "calls":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->onCallStateChanged(ILjava/util/List;)V

    .line 344
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNPrevConnectedCalls:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mIsDuringMultipartyCall:Z

    if-eqz v0, :cond_2

    .line 345
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 347
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 349
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "processCallStateChanged: call cancelByUserSession"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->cancelByUserSession()V

    .line 345
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private readConfig(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 794
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    .line 795
    const-string/jumbo v2, "vsAuth"

    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 794
    invoke-static {v1, v2, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, p1

    .line 796
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readConfig: VsAuth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->maxDurationTime:[I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    .line 799
    const-string v2, "maxtimevideoshare"

    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 798
    invoke-static {v1, v2, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, p1

    .line 801
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 802
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "readconfig: vsauth true but forced disable for SPRINT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->disableVshFeature()V

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aput v3, v0, p1

    .line 806
    :cond_0
    return-void
.end method

.method private updateFeatures(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 880
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->readConfig(I)V

    .line 882
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    .line 883
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 884
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 886
    .local v1, "networkType":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aget v3, v2, p1

    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    .line 887
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->blurNetworkType(I)I

    move-result v3

    aput v3, v2, p1

    .line 891
    .end local v1    # "networkType":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->isVsEnabled(II)Z

    move-result v2

    aput-boolean v2, v1, p1

    .line 892
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFeatures: phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", HasVideoShareSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "rcs"

    invoke-static {v1, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 896
    .local v1, "isRcsEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vs"

    invoke-static {v4, v5, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    .line 898
    .local v2, "isVsEnabled":Z
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aget v3, v3, p1

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 899
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mEnabledFeatures:[J

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v4, v4

    aput-wide v4, v3, p1

    goto :goto_1

    .line 901
    :cond_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateFeatures: RCS is disabled."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mEnabledFeatures:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, p1

    .line 904
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInitialFeatures:[J

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mEnabledFeatures:[J

    aget-wide v4, v4, p1

    aput-wide v4, v3, p1

    .line 905
    return-void
.end method

.method private vshIncomingSessionEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;

    .line 524
    iget v6, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mSessionId:I

    .line 525
    .local v6, "sessionId":I
    iget-object v7, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 526
    .local v7, "remoteUri":Lcom/sec/ims/util/ImsUri;
    iget-object v8, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 527
    .local v8, "contentType":Ljava/lang/String;
    iget v9, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mSource:I

    .line 528
    .local v9, "source":I
    iget-object v10, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    .line 530
    .local v10, "filePath":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vshIncomingSessionEvent #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshInComingEntered:Z

    .line 533
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInComingTerminateId:I

    .line 535
    if-eqz v8, :cond_0

    .line 536
    const-string v0, "application/samsungrcssos"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Skipping OpenAPI incoming session message"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 540
    :cond_0
    new-instance v11, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;

    move-object v0, v11

    move-object v1, p0

    move v2, v6

    move v3, v9

    move-object v4, v10

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;IILjava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    invoke-virtual {p0, v11}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->post(Ljava/lang/Runnable;)Z

    .line 567
    return-void
.end method

.method private vshReasonTranslator(Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)I
    .locals 2
    .param p1, "value"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 719
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$5;->$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 747
    const/16 v0, 0x9

    return v0

    .line 742
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 740
    :pswitch_1
    const/16 v0, 0xd

    return v0

    .line 738
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 735
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 726
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 721
    :pswitch_5
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private vshSessionEstablishedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;

    .line 620
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vshSessionEstablishedEvent session #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    .line 622
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    if-eqz v0, :cond_1

    .line 623
    const/4 v1, 0x0

    .line 624
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->maxDurationTime:[I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mActiveCallPhoneId:I

    aget v2, v2, v3

    if-eqz v2, :cond_0

    .line 625
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->INTENT_MAX_DURATION_TIME:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->EXTRA_SESSIONID:Ljava/lang/String;

    iget v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 632
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mResolution:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->sessioinEstablished(Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;Landroid/app/PendingIntent;)V

    .line 633
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 634
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 633
    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastConnected(JLcom/sec/ims/util/ImsUri;)V

    .line 636
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/util/DeviceOrientationStatus;->getDeviceOrientation(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    move-result-object v2

    .line 637
    .local v2, "orientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->setPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    .line 639
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "orientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    goto :goto_0

    .line 640
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Session is Not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_0
    return-void
.end method

.method private vshSessionTerminatedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;

    .line 650
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vshSessionTerminatedEvent session #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mSessionId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    .line 653
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 655
    .local v1, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_3

    .line 656
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->sessionTerminatedByStack()V

    .line 657
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v2

    .line 659
    .local v2, "content":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    if-eqz v1, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v3

    .line 661
    .local v3, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->exchangeCapabilitiesForVSH(IZ)V

    .line 664
    .end local v3    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    :cond_0
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->vshReasonTranslator(Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)I

    move-result v3

    .line 665
    .local v3, "error":I
    iput v3, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 666
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    iget-wide v5, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v7, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    iget v8, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V

    .line 670
    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne v4, v5, :cond_1

    .line 671
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCshServiceNotReady()V

    .line 674
    :cond_1
    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne v4, v5, :cond_2

    .line 675
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCshCamError()V

    .line 678
    .end local v2    # "content":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    .end local v3    # "error":I
    :cond_2
    goto :goto_0

    .line 679
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Already removed session"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshInComingEntered:Z

    if-eqz v2, :cond_4

    .line 681
    iget v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mSessionId:I

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInComingTerminateId:I

    .line 684
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public acceptShare(J)V
    .locals 4
    .param p1, "sharedId"    # J

    .line 412
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptShare sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    .line 414
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->acceptIncomingSession()V

    goto :goto_0

    .line 417
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCommunicationError()V

    .line 420
    :goto_0
    return-void
.end method

.method public cancelShare(J)V
    .locals 4
    .param p1, "sharedId"    # J

    .line 428
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelShare sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    .line 430
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->cancelByUserSession()V

    goto :goto_0

    .line 433
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCommunicationError()V

    .line 436
    :goto_0
    return-void
.end method

.method public changeSurfaceOrientation(JI)V
    .locals 4
    .param p1, "sharedId"    # J
    .param p3, "orientation"    # I

    .line 474
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    .line 475
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    if-eqz v0, :cond_0

    .line 476
    invoke-static {p3}, Lcom/sec/internal/ims/util/DeviceOrientationStatus;->translate(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->setPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    .line 477
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeSurfaceOrientation sharedId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " onSuccess"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCommunicationError()V

    .line 482
    :goto_0
    return-void
.end method

.method public createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "videoPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/csh/VideoShare;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 402
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/sec/internal/ims/servicemodules/csh/VideoShare;>;"
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->post(Ljava/lang/Runnable;)Z

    .line 403
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 872
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRegistrationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 873
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRegistrationId:I

    .line 874
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 873
    return-object v0

    .line 876
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxDurationTime()I
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->maxDurationTime:[I

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mActiveCallPhoneId:I

    aget v0, v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 181
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 186
    const-string/jumbo v0, "vs"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .locals 4
    .param p1, "sessionId"    # I

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not Video Share"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v0    # "e":Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .locals 5
    .param p1, "sharedId"    # J

    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 491
    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " is not Video Share"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object p1

    return-object p1
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->handleIntent(Landroid/content/Intent;)V

    .line 775
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 688
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 691
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->cancelShare(J)V

    .line 706
    goto :goto_0

    .line 701
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 702
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->vshSessionTerminatedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;)V

    .line 703
    goto :goto_0

    .line 697
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 698
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->vshSessionEstablishedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;)V

    .line 699
    goto :goto_0

    .line 693
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 694
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->vshIncomingSessionEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;)V

    .line 695
    nop

    .line 710
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :goto_0
    return-void
.end method

.method public isVsEnabled(II)Z
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "phoneId"    # I

    .line 818
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", VsAuth is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aget v1, v0, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 820
    return v2

    .line 821
    :cond_0
    aget v1, v0, p2

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-lez v1, :cond_1

    .line 822
    return v3

    .line 825
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 845
    :pswitch_0
    return v2

    .line 827
    :pswitch_1
    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    move v2, v3

    :cond_2
    return v2

    .line 842
    :pswitch_2
    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_3

    move v2, v3

    :cond_3
    return v2

    .line 839
    :pswitch_3
    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_4

    move v2, v3

    :cond_4
    return v2

    .line 835
    :pswitch_4
    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_5

    move v2, v3

    :cond_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyApprochingVsMaxDuration(JI)V
    .locals 1
    .param p1, "sharedId"    # J
    .param p3, "remainingTime"    # I

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastApproachingVsMaxDuration(JI)V

    .line 610
    return-void
.end method

.method public notityIncommingSession(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 9
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "filePath"    # Ljava/lang/String;

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "hasActiveCall":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v1, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mActiveCallLists:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 583
    .local v3, "phoneId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mActiveCallLists:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/util/List;

    .line 584
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 585
    .local v5, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 586
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 587
    .local v6, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v6, :cond_0

    invoke-virtual {v6, p3}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 588
    const/4 v0, 0x1

    .line 589
    goto :goto_2

    .line 592
    .end local v5    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v6    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    goto :goto_1

    .line 593
    .end local v3    # "phoneId":Ljava/lang/Integer;
    :cond_1
    :goto_2
    goto :goto_0

    .line 594
    :cond_2
    if-nez v0, :cond_3

    .line 595
    const/4 v2, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 597
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIncomming(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 599
    :goto_3
    return-void
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 338
    .local p2, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->processCallStateChanged(ILjava/util/concurrent/CopyOnWriteArrayList;)V

    .line 339
    return-void
.end method

.method public onConfigured(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 226
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->updateFeatures(I)V

    .line 228
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 4
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 267
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 269
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mEnabledFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInitialFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 271
    return-void

    .line 274
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRegistrationId:I

    .line 275
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->updateServiceStatus(I)V

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mEnabledFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInitialFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 277
    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 9
    .param p1, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p2, "phoneId"    # I

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "network":I
    const/4 v1, 0x0

    .line 284
    .local v1, "hasVideoShareSupport":Z
    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 285
    const/16 v0, 0x12

    goto :goto_0

    .line 287
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 290
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 291
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNetworkChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aget v2, v2, p2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 295
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 296
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v4

    .line 297
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    const-wide/16 v5, -0x1

    .line 299
    .local v5, "shareId":J
    if-eqz v4, :cond_1

    .line 300
    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v7

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 301
    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v7

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    if-ne v7, v3, :cond_1

    .line 303
    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v7

    iget-wide v5, v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 304
    const/4 v7, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->sendMessage(Landroid/os/Message;)Z

    .line 295
    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .end local v5    # "shareId":J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aget v2, v2, p2

    if-eq v0, v2, :cond_5

    .line 310
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->isVsEnabled(II)Z

    move-result v1

    .line 312
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    aget-boolean v2, v2, p2

    if-eq v2, v1, :cond_4

    .line 313
    if-eqz v1, :cond_3

    .line 314
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "enable VSH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mEnabledFeatures:[J

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v3, v3

    aput-wide v3, v2, p2

    goto :goto_2

    .line 317
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "disable VSH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mEnabledFeatures:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, p2

    .line 321
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v2

    .line 322
    .local v2, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 323
    const/16 v3, 0x12

    if-eq v0, v3, :cond_4

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aget v4, v4, p2

    if-eq v4, v3, :cond_4

    .line 325
    invoke-interface {v2, v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->exchangeCapabilitiesForVSHOnRegi(ZI)V

    .line 329
    .end local v2    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    aput-boolean v1, v2, p2

    .line 333
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aput v0, v2, p2

    .line 334
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 6
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 232
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 233
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered() phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", services : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 236
    .local v0, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRegistrationId:I

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->updateServiceStatus(I)V

    .line 242
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mContext:Landroid/content/Context;

    .line 243
    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 244
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 246
    .local v2, "networkType":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    .line 247
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->blurNetworkType(I)I

    move-result v5

    aput v5, v3, v4

    .line 251
    .end local v2    # "networkType":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->isVsEnabled(II)Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 252
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    .line 253
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "enable VSH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mEnabledFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v4, v4

    aput-wide v4, v2, v3

    goto :goto_0

    .line 256
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "disable VSH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mEnabledFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 260
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v2

    .line 261
    .local v2, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 262
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    aget-boolean v3, v3, v4

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->exchangeCapabilitiesForVSHOnRegi(ZI)V

    .line 263
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;

    .line 193
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->updateFeatures(I)V

    .line 194
    return-void
.end method

.method public resetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    .line 786
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->resetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V

    .line 787
    return-void
.end method

.method public setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V
    .locals 1
    .param p1, "orientation"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 778
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    .line 779
    return-void
.end method

.method public setVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    .line 782
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->setVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V

    .line 783
    return-void
.end method

.method public start()V
    .locals 3

    .line 198
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->start()V

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->registerForVshIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->registerForVshSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->registerForVshSessionTerminated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 210
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 211
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->sessionFailed()V

    .line 208
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->stop()V

    .line 217
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->disableVshFeature()V

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->unregisterForVshIncomingSession(Landroid/os/Handler;)V

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->unregisterForVshSessionEstablished(Landroid/os/Handler;)V

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->unregisterForVshSessionTerminated(Landroid/os/Handler;)V

    .line 222
    return-void
.end method

.method public toggleCamera(J)V
    .locals 4
    .param p1, "sharedId"    # J

    .line 444
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleCamera sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    .line 446
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    if-eqz v0, :cond_0

    .line 447
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$3;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;-><init>(Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 458
    .local v1, "params":Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->switchCamera(Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;)V

    .line 459
    .end local v1    # "params":Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;
    goto :goto_0

    .line 460
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCommunicationError()V

    .line 464
    :goto_0
    return-void
.end method

.method protected updateServiceStatus(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 851
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->updateServiceStatus(I)V

    .line 854
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mIsDuringMultipartyCall:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mEnabledFeatures:[J

    aget-wide v0, v0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v2, v2

    .line 855
    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRemoteCapabilities:Lcom/sec/ims/options/Capabilities;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 856
    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 858
    .local v0, "status":Z
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mIsServiceReady:Z

    if-eq v1, v0, :cond_2

    .line 859
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mIsServiceReady:Z

    .line 860
    if-eqz v0, :cond_1

    .line 861
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastServiceReady()V

    goto :goto_1

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastServiceNotReady()V

    .line 866
    :cond_2
    :goto_1
    return-void
.end method
