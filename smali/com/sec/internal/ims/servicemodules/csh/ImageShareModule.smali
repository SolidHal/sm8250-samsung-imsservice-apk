.class public Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;
.super Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;
.source "ImageShareModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;


# static fields
.field private static final EVENT_INCOMING_SESSION:I = 0x2

.field private static final EVENT_SESSION_ESTABLISHED:I = 0x3

.field private static final EVENT_TRANSFER_COMPLETE:I = 0x4

.field private static final EVENT_TRANSFER_FAILED:I = 0x6

.field private static final EVENT_TRANSFER_PROGRESS:I = 0x5

.field private static LOG_TAG:Ljava/lang/String;

.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mHasImageShareSupport:[Z

.field private mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

.field private mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:[J

.field private mRegistrationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->NAME:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ishServiceInterface"    # Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mMaxSize:[J

    .line 70
    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRegistrationId:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mListeners:Ljava/util/List;

    .line 83
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    .line 84
    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance(Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;)Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    .line 85
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    .line 86
    return-void

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;)Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    return-object v0
.end method

.method private disableIshFeature()V
    .locals 3

    .line 401
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disableIshFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v0, "CapabilityDiscoveryModule"

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->createChannel(Ljava/lang/String;Landroid/os/Handler;)Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;

    move-result-object v0

    .line 404
    .local v0, "chan":Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->disableFeature(J)V

    .line 405
    return-void
.end method

.method private ishReasonTranslator(Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)I
    .locals 2
    .param p1, "value"    # Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 408
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$3;->$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 437
    const/16 v0, 0x9

    return v0

    .line 432
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 429
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 425
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 417
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 411
    :pswitch_4
    const/16 v0, 0xa

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readConfig(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mContext:Landroid/content/Context;

    .line 478
    const-string v2, "isAuth"

    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 477
    invoke-static {v1, v2, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mMaxSize:[J

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mContext:Landroid/content/Context;

    .line 480
    const-string v2, "maxsizeimageshare"

    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 479
    invoke-static {v1, v2, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v0, p1

    .line 481
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readConfig phonId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ImageShare enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ImageShare Max size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mMaxSize:[J

    aget-wide v4, v2, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "readconfig: isauth true but forced disable for SPRINT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->disableIshFeature()V

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    aput-boolean v3, v0, p1

    .line 488
    :cond_0
    return-void
.end method

.method private updateFeatures(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 518
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->readConfig(I)V

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 524
    .local v0, "isRcsEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mHasImageShareSupport:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mContext:Landroid/content/Context;

    .line 525
    const-string v3, "is"

    invoke-static {v2, v3, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mEnabledFeatures:[J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v2, v2

    aput-wide v2, v1, p1

    goto :goto_1

    .line 528
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateFeatures: RCS is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mEnabledFeatures:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, p1

    .line 531
    :goto_1
    return-void
.end method


# virtual methods
.method public acceptShare(J)V
    .locals 4
    .param p1, "sharedId"    # J

    .line 211
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptShare sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object v0

    .line 213
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/StorageEnvironment;->isSdCardStateFine(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->acceptIncomingSession()V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->incomingSessionPreReject()V

    goto :goto_0

    .line 220
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCommunicationError()V

    .line 223
    :goto_0
    return-void
.end method

.method public cancelShare(J)V
    .locals 4
    .param p1, "sharedId"    # J

    .line 226
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelShare sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object v0

    .line 228
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->cancelByLocalSession()V

    goto :goto_0

    .line 231
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCommunicationError()V

    .line 234
    :goto_0
    return-void
.end method

.method public createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/csh/ImageShare;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 206
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/sec/internal/ims/servicemodules/csh/ImageShare;>;"
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-object v0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 510
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRegistrationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 511
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRegistrationId:I

    .line 512
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 511
    return-object v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mMaxSize:[J

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mActiveCallPhoneId:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "is"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession(J)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .locals 4
    .param p1, "sharedId"    # J

    .line 239
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    return-object v0

    .line 241
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " is not Image Share"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v0    # "e":Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object p1

    return-object p1
.end method

.method public getWarnSize()J
    .locals 2

    .line 181
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->handleIntent(Landroid/content/Intent;)V

    .line 474
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 442
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 445
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 464
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishTransferFailedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;)V

    .line 465
    goto :goto_0

    .line 459
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 460
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishTransferProgressEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;)V

    .line 461
    goto :goto_0

    .line 455
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 456
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishTransferCompleteEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;)V

    .line 457
    goto :goto_0

    .line 451
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 452
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishSessionEstablishedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;)V

    .line 453
    goto :goto_0

    .line 447
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 448
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishIncomingSessionEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;)V

    .line 449
    nop

    .line 469
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :goto_0
    return-void
.end method

.method public ishCancelFailed(I)V
    .locals 7
    .param p1, "sessionId"    # I

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 309
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessionFailed()V

    .line 311
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    const/16 v6, 0xc

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V

    .line 314
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ishCancelFailed sessionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " broadcast finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Already removed session"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return-void
.end method

.method public ishIncomingSessionEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;

    .line 360
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mSessionId:I

    .line 361
    .local v0, "sessionId":I
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 362
    .local v1, "remoteUri":Lcom/sec/ims/util/ImsUri;
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 363
    .local v2, "userAlias":Ljava/lang/String;
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mFt:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    .line 364
    .local v3, "ft":Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIshIncomingSessionEvent( #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): Enter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "contentType":Ljava/lang/String;
    const-string v5, "application/samsungrcssos"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    sget-object v5, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Skipping OpenAPI incoming session message"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 372
    :cond_0
    new-instance v5, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;

    invoke-direct {v5, p0, v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)V

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method public ishSessionEstablishedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 250
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ishSessionEstablishedEvent sessionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 255
    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 257
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessioinEstablished()V

    .line 259
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 260
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 259
    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastConnected(JLcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    .line 262
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Session is Not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    return-void
.end method

.method public ishTransferCompleteEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 322
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transferCompleted()V

    .line 325
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 326
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 325
    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCompleted(JLcom/sec/ims/util/ImsUri;)V

    .line 328
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    if-nez v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastSystemRefresh(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Already removed session"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    :goto_0
    return-void
.end method

.method public ishTransferFailedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;

    .line 267
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;->mSessionId:I

    .line 268
    .local v0, "sessionId":I
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 269
    .local v1, "reason":Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ishTransferFailedEvent sessionId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Reason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 271
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 273
    .local v3, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne v1, v4, :cond_1

    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v5

    .line 276
    .local v5, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    .line 280
    :cond_0
    if-eqz v4, :cond_1

    .line 281
    new-instance v6, Lcom/sec/ims/util/SipError;

    const/16 v7, 0x193

    const-string v8, "Forbidden"

    invoke-direct {v6, v7, v8}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const-string v7, "ish_tapi"

    invoke-interface {v4, v7, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 285
    .end local v4    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .end local v5    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    :cond_1
    if-eqz v2, :cond_3

    .line 286
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessionFailed()V

    .line 288
    if-eqz v3, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v4

    .line 290
    .local v4, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->exchangeCapabilitiesForVSH(IZ)V

    .line 293
    .end local v4    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    :cond_2
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v8, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v10, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget v11, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 295
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishReasonTranslator(Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)I

    move-result v12

    .line 293
    invoke-virtual/range {v7 .. v12}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V

    .line 297
    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne v4, v5, :cond_4

    .line 298
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastCshServiceNotReady()V

    goto :goto_0

    .line 302
    :cond_3
    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Already removed session"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_4
    :goto_0
    return-void
.end method

.method public ishTransferProgressEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 339
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    if-eqz v0, :cond_1

    .line 340
    iget-wide v9, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;->mProgress:J

    .line 341
    .local v9, "progress":J
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 343
    .local v11, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "progressing for in_progress state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x64

    mul-long/2addr v3, v9

    .line 344
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    iput-wide v9, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataProgress:J

    .line 346
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/ICshConstants$ShareDatabase;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 348
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 349
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 350
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v5

    iget-wide v7, v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 348
    move-wide v5, v9

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastProgress(JLcom/sec/ims/util/ImsUri;JJ)V

    .line 351
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;

    .line 352
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v9, v10}, Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;->onIshTransferProgressEvent(Ljava/lang/String;J)V

    .line 353
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;
    goto :goto_0

    .line 354
    .end local v9    # "progress":J
    .end local v11    # "contentResolver":Landroid/content/ContentResolver;
    :cond_0
    goto :goto_1

    .line 355
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Session is Not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_1
    return-void
.end method

.method public notifyInvalidDataPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastInvalidDataPath(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public notifyLimitExceeded(JLcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p1, "sharedId"    # J
    .param p3, "remoteUri"    # Lcom/sec/ims/util/ImsUri;

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastLimitExceeded(JLcom/sec/ims/util/ImsUri;)V

    .line 394
    return-void
.end method

.method public notityIncommingSession(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;J)V
    .locals 7
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "fileSize"    # J

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIncomming(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;J)V

    .line 390
    return-void
.end method

.method public onConfigured(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 139
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->updateFeatures(I)V

    .line 141
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 158
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 160
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRegistrationId:I

    .line 165
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->updateServiceStatus(I)V

    .line 166
    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 0
    .param p1, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p2, "phoneId"    # I

    .line 170
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 145
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 146
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRegistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 149
    .local v0, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRegistrationId:I

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->updateServiceStatus(I)V

    .line 154
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;

    .line 102
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->updateFeatures(I)V

    .line 103
    return-void
.end method

.method public registerImageShareEventListener(Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method public start()V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->start()V

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->registerForIshIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->registerForIshSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->registerForIshTransferComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->registerForIshTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->registerForIshTransferFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 123
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessionFailed()V

    .line 120
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->stop()V

    .line 129
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->disableIshFeature()V

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->unregisterForIshIncomingSession(Landroid/os/Handler;)V

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->unregisterForIshSessionEstablished(Landroid/os/Handler;)V

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->unregisterForIshTransferComplete(Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->unregisterForIshTransferProgress(Landroid/os/Handler;)V

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->unregisterForIshTransferFailed(Landroid/os/Handler;)V

    .line 135
    return-void
.end method

.method protected updateServiceStatus(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 492
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->updateServiceStatus(I)V

    .line 495
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIsDuringMultipartyCall:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mEnabledFeatures:[J

    aget-wide v0, v0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v2, v2

    .line 496
    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mRemoteCapabilities:Lcom/sec/ims/options/Capabilities;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    .line 497
    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 499
    .local v0, "status":Z
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIsServiceReady:Z

    if-eq v1, v0, :cond_2

    .line 500
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIsServiceReady:Z

    .line 501
    if-eqz v0, :cond_1

    .line 502
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastServiceReady()V

    goto :goto_1

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mIshTranslation:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastServiceNotReady()V

    .line 507
    :cond_2
    :goto_1
    return-void
.end method
