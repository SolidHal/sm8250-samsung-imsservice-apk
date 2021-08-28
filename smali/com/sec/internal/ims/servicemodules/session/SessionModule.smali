.class public Lcom/sec/internal/ims/servicemodules/session/SessionModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "SessionModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;
.implements Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;
    }
.end annotation


# static fields
.field private static final EVENT_CLOSE_SESSION:I = 0x7

.field private static final EVENT_CONFIGURED:I = 0x8

.field private static final EVENT_INCOMING_MESSAGE:I = 0x4

.field private static final EVENT_INCOMING_SESSION:I = 0x1

.field private static final EVENT_REJECT_SESSION:I = 0x6

.field private static final EVENT_SEND_MESSAGE_FAILED:I = 0x5

.field private static final EVENT_SESSION_CLOSED:I = 0x3

.field private static final EVENT_SESSION_ESTABLISHED:I = 0x2

.field public static final INTENT_FILTER_MESSAGE:Ljava/lang/String; = "com.gsma.services.rcs.extension.action.NEW_MESSAGING_SESSION"

.field public static final INTENT_FILTER_STREAM:Ljava/lang/String; = "com.gsma.services.rcs.extension.action.NEW_STREAMING_SESSION"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MIMETYPE_ALL:Ljava/lang/String; = "com.gsma.services.rcs/*"

.field public static final MIMETYPE_PREFIX:Ljava/lang/String; = "com.gsma.services.rcs/"

.field public static final NAME:Ljava/lang/String;

.field private static final SERVICE_ID_CALL_COMPOSER:Ljava/lang/String; = "gsma.callcomposer"

.field private static final SERVICE_ID_POST_CALL:Ljava/lang/String; = "gsma.callunanswered"

.field private static final SERVICE_ID_SHARED_MAP:Ljava/lang/String; = "gsma.sharedmap"

.field private static final SERVICE_ID_SHARED_SKETCH:Ljava/lang/String; = "gsma.sharedsketch"

.field private static mInactivityTimeout:J

.field private static final sRequiredServices:[Ljava/lang/String;


# instance fields
.field private callState:I

.field private canRegisterExt:Z

.field private isEnableFailedMedia:Z

.field private isWaitingForCloseTagSendingComplete:Z

.field private mCallComposerTimerIdle:[I

.field private mCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mComposerAuth:[Z

.field private mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private final mContext:Landroid/content/Context;

.field private final mIariTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessagingSessionStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessagingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

.field private mPostCallAuth:[Z

.field private final mRegisteredServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationId:I

.field private final mServiceIDsFromMetaData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedMapAuth:[Z

.field private mSharedSketchAuth:[Z

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    const-class v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->NAME:Ljava/lang/String;

    .line 144
    const-string v0, "ec"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sRequiredServices:[Ljava/lang/String;

    .line 148
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mInactivityTimeout:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imsServiceInterface"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 176
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    .line 151
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessionStates:Ljava/util/Map;

    .line 154
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallComposerTimerIdle:[I

    .line 155
    new-array v1, v0, [Z

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mComposerAuth:[Z

    .line 156
    new-array v1, v0, [Z

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedMapAuth:[Z

    .line 157
    new-array v1, v0, [Z

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedSketchAuth:[Z

    .line 158
    new-array v0, v0, [Z

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPostCallAuth:[Z

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->canRegisterExt:Z

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mIariTypes:Ljava/util/List;

    .line 165
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegistrationId:I

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mServiceIDsFromMetaData:Ljava/util/List;

    .line 168
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 169
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isWaitingForCloseTagSendingComplete:Z

    .line 171
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->callState:I

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    .line 1257
    new-instance v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/session/SessionModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 177
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    .line 179
    new-instance v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 181
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;)V

    .line 182
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 183
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 184
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 185
    const-string v0, "SessionModule"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 186
    return-void

    nop

    :array_0
    .array-data 4
        0xb4
        0xb4
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 114
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/servicemodules/session/SessionModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/session/SessionModule;
    .param p1, "x1"    # I

    .line 114
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->callState:I

    return p1
.end method

.method private adjustAcceptTypes(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "acceptTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 612
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 614
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v5, "application/vnd.gsma.encall+xml"

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 627
    :cond_1
    const-string v1, "application/vnd.gsma.sharedsketch+xml"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    goto :goto_2

    .line 624
    :cond_2
    const-string v1, "application/vnd.gsma.sharedmap+xml"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    goto :goto_2

    .line 620
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    const-string v1, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    goto :goto_2

    .line 616
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    const-string v1, "message/cpim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    nop

    .line 633
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68ab1bb3 -> :sswitch_3
        -0x2caa3cb1 -> :sswitch_2
        -0x15cde156 -> :sswitch_1
        0x3f3764c0 -> :sswitch_0
    .end sparse-switch
.end method

.method private adjustAcceptWrappedTypes(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "acceptWrappedTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 639
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 641
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_1

    goto :goto_2

    .line 643
    :cond_1
    const-string v1, "message/imdn+xml"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    const-string v1, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    nop

    .line 656
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68ab1bb3 -> :sswitch_3
        -0x2caa3cb1 -> :sswitch_2
        -0x15cde156 -> :sswitch_1
        0x3f3764c0 -> :sswitch_0
    .end sparse-switch
.end method

.method private adjustServiceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "gsma.sharedsketch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "gsma.callcomposer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "gsma.sharedmap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "gsma.callunanswered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 591
    return-object p1

    .line 589
    :cond_1
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    return-object v0

    .line 587
    :cond_2
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    return-object v0

    .line 585
    :cond_3
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    return-object v0

    .line 583
    :cond_4
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x824ef82 -> :sswitch_3
        0x3d50e5e9 -> :sswitch_2
        0x585bc92c -> :sswitch_1
        0x73f9a3ff -> :sswitch_0
    .end sparse-switch
.end method

.method private adjustServiceId2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 596
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 606
    return-object p1

    .line 604
    :cond_1
    const-string v0, "gsma.callunanswered"

    return-object v0

    .line 602
    :cond_2
    const-string v0, "gsma.sharedsketch"

    return-object v0

    .line 600
    :cond_3
    const-string v0, "gsma.sharedmap"

    return-object v0

    .line 598
    :cond_4
    const-string v0, "gsma.callcomposer"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68ab1bb3 -> :sswitch_3
        -0x2caa3cb1 -> :sswitch_2
        -0x15cde156 -> :sswitch_1
        0x3f3764c0 -> :sswitch_0
    .end sparse-switch
.end method

.method private buildServiceConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceID"    # Ljava/lang/String;

    .line 724
    return-void
.end method

.method private createIncomingImSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 7
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v0, "mInitiator":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 690
    .local v1, "sb":Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 691
    invoke-virtual {v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 692
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 693
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 694
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 695
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 696
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 697
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 698
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 699
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 700
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 701
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionType(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 702
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 703
    invoke-virtual {v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceId:Ljava/lang/String;

    .line 704
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->serviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 705
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 707
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-object v2
.end method

.method private createOutgoingMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "contents"    # [B
    .param p4, "contentType"    # Ljava/lang/String;

    .line 542
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 544
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 545
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 546
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 547
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 548
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 549
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 550
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    new-instance v1, Ljava/lang/String;

    .line 551
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 552
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 554
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 553
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 555
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 556
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 557
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 558
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 560
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 561
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    .line 563
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    return-object v0
.end method

.method private createOutgoingSession(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 661
    .local p4, "acceptTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "acceptWrappedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 662
    .local v0, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 663
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 664
    .local v1, "sb":Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 665
    invoke-virtual {v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 666
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 667
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 668
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 669
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 670
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, p1, v4, v3}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 671
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 672
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 673
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 674
    invoke-virtual {v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 675
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->serviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 676
    invoke-virtual {v2, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->acceptTypes(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 677
    invoke-virtual {v2, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->acceptWrappedTypes(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 678
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 680
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    return-object v2
.end method

.method private getActiveCall(Lcom/sec/ims/util/ImsUri;)Z
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 1408
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 1409
    .local v1, "callUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1410
    const/4 v0, 0x1

    return v0

    .line 1412
    .end local v1    # "callUri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    goto :goto_0

    .line 1413
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$updateConfig$0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "p"    # Lcom/sec/ims/settings/ImsProfile;

    .line 976
    const-string v0, "im"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    const-string/jumbo v0, "slm"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 976
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 1066
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingMessageReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1069
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onIncomingMessageReceived: mChatId is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1073
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_1

    .line 1074
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onIncomingMessageReceived: Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return-void

    .line 1078
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;

    .line 1079
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-interface {v2, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;->onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;[BLjava/lang/String;)V

    .line 1081
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
    goto :goto_0

    .line 1083
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v1

    .line 1084
    .local v1, "phoneId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1085
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    .line 1087
    :cond_3
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->storeDRCSInfoToImsLogAgent(ILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    .line 1088
    return-void
.end method

.method private onIncomingSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 990
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSessionReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 994
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 995
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->createIncomingImSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 996
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->adjustServiceId2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, "si":Ljava/lang/String;
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getActiveCall(Lcom/sec/ims/util/ImsUri;)Z

    move-result v2

    .line 999
    .local v2, "activeCall":Z
    sget-object v3, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveCall result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    if-nez v2, :cond_1

    .line 1002
    const-string v3, "gsma.sharedmap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gsma.sharedsketch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1003
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call State :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->callState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "ServiceID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 1005
    const/4 v3, 0x6

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sendMessage(Landroid/os/Message;)Z

    .line 1006
    return-void

    .line 1009
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;

    .line 1010
    .local v4, "listener":Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.gsma.services.rcs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;->onIncomingSessionInvited(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V

    .line 1011
    .end local v4    # "listener":Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
    goto :goto_0

    .line 1012
    :cond_2
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 1015
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v1    # "si":Ljava/lang/String;
    .end local v2    # "activeCall":Z
    :cond_3
    return-void
.end method

.method private onRejectSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1091
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRejectSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->rejectSession()V

    .line 1093
    return-void
.end method

.method private onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 1030
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionClosed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v0, 0x0

    .line 1034
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mChatId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1035
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    goto :goto_0

    .line 1037
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mChatId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1040
    :goto_0
    if-nez v0, :cond_1

    .line 1041
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSessionClosed: Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return-void

    .line 1045
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 1046
    .local v1, "error":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v2, :cond_3

    .line 1049
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionClosed: Session closed by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 1053
    :cond_3
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    .line 1054
    return-void
.end method

.method private onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    .line 1018
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionEstablished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1021
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 1022
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSessionEstablished: Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return-void

    .line 1026
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    .line 1027
    return-void
.end method

.method private sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "orst"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/String;

    .line 1528
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)Z

    move-result v0

    return v0
.end method

.method private sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)Z
    .locals 15
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "orst"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/String;
    .param p4, "resultType"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .param p5, "statusCode"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 1533
    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v1, "MSIZ"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v0

    .line 1534
    .local v0, "phoneId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1535
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    move v10, v0

    goto :goto_0

    .line 1534
    :cond_0
    move v10, v0

    .line 1537
    .end local v0    # "phoneId":I
    .local v10, "phoneId":I
    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v11, v0

    .line 1538
    .local v11, "rcsmKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ORST"

    invoke-interface {v11, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const-string v4, "1"

    const-string v5, "MDIR"

    const-string v6, "0"

    if-ne v0, v3, :cond_1

    .line 1540
    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1541
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v3, :cond_2

    .line 1542
    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    :cond_2
    :goto_1
    const-string v0, "MTYP"

    const-string v3, "EC"

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MCID"

    invoke-interface {v11, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MIID"

    invoke-interface {v11, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1549
    .local v0, "utf8Bytes":[B
    array-length v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    nop

    .end local v0    # "utf8Bytes":[B
    goto :goto_2

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-interface {v11, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1550
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1551
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "-1"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    nop

    .line 1555
    :goto_2
    const-string v1, "-1"

    .line 1557
    .local v1, "regiRat":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v10}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    .line 1560
    goto :goto_3

    .line 1558
    :catch_2
    move-exception v0

    .line 1559
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sendRCSMInfoToHQM: NullPointerException e = "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1561
    .end local v1    # "regiRat":Ljava/lang/String;
    .local v0, "regiRat":Ljava/lang/String;
    :goto_3
    nop

    .line 1562
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_WIFI"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    move-object v1, v0

    .line 1561
    :goto_4
    const-string v3, "MRAT"

    invoke-interface {v11, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x5

    const/4 v5, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    packed-switch v1, :pswitch_data_0

    :cond_4
    goto :goto_5

    :pswitch_0
    const-string v1, "5"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v3

    goto :goto_5

    :pswitch_1
    const-string v1, "4"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v5

    goto :goto_5

    :pswitch_2
    const-string v1, "3"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v12

    goto :goto_5

    :pswitch_3
    const-string v1, "2"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v13

    goto :goto_5

    :pswitch_4
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v14

    goto :goto_5

    :pswitch_5
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_a

    if-eq v2, v14, :cond_9

    if-eq v2, v13, :cond_8

    const-string v1, "ITER"

    if-eq v2, v12, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v3, :cond_5

    .line 1582
    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1579
    :cond_5
    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    goto :goto_6

    .line 1576
    :cond_6
    const-string v1, "HTTP"

    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    goto :goto_6

    .line 1573
    :cond_7
    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    goto :goto_6

    .line 1570
    :cond_8
    const-string v1, "MSRP"

    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    goto :goto_6

    .line 1567
    :cond_9
    const-string v1, "SIPR"

    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    goto :goto_6

    .line 1565
    :cond_a
    nop

    .line 1585
    :goto_6
    if-eqz p5, :cond_b

    .line 1586
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SRSC"

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    move-object v1, p0

    move v2, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->storeDRCSInfoToImsLogAgent(ILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    .line 1589
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const-string v2, "RCSM"

    invoke-static {v1, v2, v10, v11}, Lcom/sec/internal/ims/diagnosis/RcsHqmAgent;->sendRCSInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setInactivityTimeout(J)V
    .locals 3
    .param p0, "inactivityTimeout"    # J

    .line 200
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set InactivityTimeout=: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sput-wide p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mInactivityTimeout:J

    .line 203
    return-void
.end method

.method private storeDRCSInfoToImsLogAgent(ILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "imDirection"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "orst"    # Ljava/lang/String;
    .param p4, "resultType"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .param p5, "statusCode"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 1473
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1474
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "send_mode"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    const-string/jumbo v3, "overwrite_mode"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1476
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v3, :cond_7

    .line 1477
    const/4 v3, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    packed-switch v4, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v4, "5"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v6

    goto :goto_0

    :pswitch_1
    const-string v4, "4"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    goto :goto_0

    :pswitch_2
    const-string v4, "3"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v7

    goto :goto_0

    :pswitch_3
    const-string v4, "2"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v8

    goto :goto_0

    :pswitch_4
    const-string v4, "1"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :pswitch_5
    const-string v4, "0"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    const-string v4, "ROFN"

    const-string v9, "RCOF"

    if-eq v3, v1, :cond_5

    if-eq v3, v8, :cond_5

    if-eq v3, v5, :cond_5

    const-string v5, "ROFT"

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_1

    goto :goto_2

    .line 1493
    :cond_1
    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1494
    sget-object v3, Lcom/sec/internal/ims/servicemodules/session/SessionModule$2;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    if-eqz p4, :cond_2

    move-object v9, p4

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    :goto_1
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v9

    aget v3, v3, v9

    if-eq v3, v1, :cond_3

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_3

    const/4 v1, 0x6

    if-eq v3, v1, :cond_3

    const/4 v1, 0x7

    if-eq v3, v1, :cond_3

    .line 1511
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1512
    goto :goto_2

    .line 1501
    :cond_3
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1502
    goto :goto_2

    .line 1489
    :cond_4
    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1490
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1491
    goto :goto_2

    .line 1485
    :cond_5
    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1486
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1487
    goto :goto_2

    .line 1479
    :cond_6
    const-string v1, "RCOS"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1480
    const-string v1, "REOS"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1481
    nop

    .line 1518
    :goto_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p5, v1, :cond_8

    .line 1519
    const-string v1, "SMFB"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1521
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v1, :cond_8

    .line 1522
    const-string v1, "RCMT"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1524
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const-string v2, "DRCS"

    invoke-static {p1, v1, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1525
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateConfig(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 971
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateFeatures(I)V

    .line 972
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo()V

    .line 974
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->CHAT:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    .line 975
    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 976
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/session/-$$Lambda$SessionModule$HkaIUyOEbyiL7w-LWW591fX5KmM;->INSTANCE:Lcom/sec/internal/ims/servicemodules/session/-$$Lambda$SessionModule$HkaIUyOEbyiL7w-LWW591fX5KmM;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 977
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 976
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "profile is null, return !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-void

    .line 981
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "rcsProfile":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rcsProfile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 987
    return-void
.end method

.method private updateFeatures(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .line 1417
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1436
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1418
    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1420
    .local v0, "isRcsEnabled":Z
    :goto_0
    const-wide/16 v4, 0x0

    if-nez v0, :cond_1

    .line 1421
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateFeatures: RCS is disabled, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mEnabledFeatures:[J

    aput-wide v4, v1, p1

    .line 1423
    return-void

    .line 1426
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallComposerTimerIdle:[I

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    .line 1427
    const-string v8, "callComposerTimerIdle"

    invoke-static {v8, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1426
    invoke-static {v7, v8, v9}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, p1

    .line 1428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFeatures: mCallComposerTimerIdle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallComposerTimerIdle:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1430
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    .line 1431
    const-string v7, "composerAuth"

    invoke-static {v7, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1430
    invoke-static {v6, v7, v8}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1432
    .local v6, "val":I
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mComposerAuth:[Z

    if-eq v6, v1, :cond_3

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    aput-boolean v1, v7, p1

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: Composer enable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mComposerAuth:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedMapAuth:[Z

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    .line 1436
    const-string/jumbo v7, "sharedMapAuth"

    invoke-static {v7, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1435
    invoke-static {v2, v7, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, p1

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: SharedMapAuth enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedMapAuth:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1439
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedSketchAuth:[Z

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    .line 1440
    const-string/jumbo v7, "sharedSketchAuth"

    invoke-static {v7, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1439
    invoke-static {v2, v7, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, p1

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: SharedSketchAuth enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedSketchAuth:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1443
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPostCallAuth:[Z

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    .line 1444
    const-string/jumbo v7, "postCallAuth"

    invoke-static {v7, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1443
    invoke-static {v2, v7, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, p1

    .line 1445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: PostCallAuth enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPostCallAuth:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1447
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mEnabledFeatures:[J

    aput-wide v4, v1, p1

    .line 1449
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mComposerAuth:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_4

    .line 1450
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mEnabledFeatures:[J

    aget-wide v2, v1, p1

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    or-long/2addr v2, v4

    aput-wide v2, v1, p1

    .line 1451
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1454
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedMapAuth:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_5

    .line 1455
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mEnabledFeatures:[J

    aget-wide v2, v1, p1

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    or-long/2addr v2, v4

    aput-wide v2, v1, p1

    .line 1456
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1459
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedSketchAuth:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_6

    .line 1460
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mEnabledFeatures:[J

    aget-wide v2, v1, p1

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    or-long/2addr v2, v4

    aput-wide v2, v1, p1

    .line 1461
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1464
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPostCallAuth:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_7

    .line 1465
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mEnabledFeatures:[J

    aget-wide v2, v1, p1

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    or-long/2addr v2, v4

    aput-wide v2, v1, p1

    .line 1466
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1468
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: mEnabledFeatures="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mEnabledFeatures:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1469
    return-void
.end method


# virtual methods
.method public abortSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isWaitingForCloseTagSendingComplete:Z

    .line 526
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 527
    return-void
.end method

.method public addToRevokingMessages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imdnMessageId"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;

    .line 1282
    return-void
.end method

.method public closeSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;

    .line 530
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 532
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 533
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "closeSession: Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void

    .line 537
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 538
    return-void
.end method

.method public deRegisterApp()V
    .locals 0

    .line 732
    return-void
.end method

.method public getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1345
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 3
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 1057
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1058
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1059
    return-object v1

    .line 1061
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto :goto_0

    .line 1062
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1268
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegistrationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1269
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegistrationId:I

    .line 1270
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1269
    return-object v0

    .line 1272
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInactivityTimeout()J
    .locals 2

    .line 196
    sget-wide v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mInactivityTimeout:J

    return-wide v0
.end method

.method public getMaxMsrpLengthForExtensions()I
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    .line 191
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 190
    const-string v2, "extensionsMaxMSRPSize"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1
    .param p1, "id"    # I

    .line 1324
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1329
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    return-object v0
.end method

.method public getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "timestamp"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1352
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1335
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessagingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    return-object v0
.end method

.method public getMessagingSession(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 498
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 502
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    return-object v1

    .line 505
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_0
    goto :goto_0

    .line 507
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetwork(I)Landroid/net/Network;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1367
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1368
    .local v0, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1369
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v1

    return-object v1

    .line 1371
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOwnUris(I)Ljava/util/Set;
    .locals 6
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1376
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1377
    .local v0, "ownUris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1378
    .local v1, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_0

    .line 1379
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 1380
    .local v3, "addr":Lcom/sec/ims/util/NameAddr;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1381
    .end local v3    # "addr":Lcom/sec/ims/util/NameAddr;
    goto :goto_0

    .line 1383
    :cond_0
    return-object v0
.end method

.method public getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1
    .param p1, "id"    # I

    .line 1340
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    return-object v0
.end method

.method public getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 1

    .line 1314
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 1
    .param p1, "phoneId"    # I

    .line 1319
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 736
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sRequiredServices:[Ljava/lang/String;

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIntent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 924
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 927
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 962
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateConfig(I)V

    .line 963
    goto :goto_0

    .line 958
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isWaitingForCloseTagSendingComplete:Z

    .line 959
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->closeSession(Ljava/lang/String;)V

    .line 960
    goto :goto_0

    .line 954
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->onRejectSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 955
    goto :goto_0

    .line 944
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 945
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    .line 946
    goto :goto_0

    .line 939
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 940
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    .line 941
    goto :goto_0

    .line 934
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 935
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    .line 936
    goto :goto_0

    .line 929
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 930
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->onIncomingSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 931
    nop

    .line 968
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 1

    .line 747
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 748
    const-string v0, "SessionModule init"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo()V

    .line 751
    return-void
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 10
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "acceptTypes"    # [Ljava/lang/String;
    .param p4, "acceptWrappedTypes"    # [Ljava/lang/String;

    .line 568
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->adjustServiceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 569
    .local v6, "si":Ljava/lang/String;
    invoke-direct {p0, v6, p3}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->adjustAcceptTypes(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 570
    .local v7, "at":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v6, p4}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->adjustAcceptWrappedTypes(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 572
    .local v8, "awt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v9

    .line 574
    .local v9, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->createOutgoingSession(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 575
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 576
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 577
    return-object v0
.end method

.method public isServiceActivated(Ljava/lang/String;)Z
    .locals 8
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isServiceActivated,serviceId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1152
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 1153
    .local v0, "defaultPhoneId":I
    const-string v1, "gsma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 1156
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v1

    .line 1157
    .local v1, "activeNetwork":I
    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    goto :goto_2

    .line 1165
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    .line 1164
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 1165
    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    .line 1166
    .local v4, "isEasyMode":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 1167
    const-string v3, "Easymode on, return "

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1168
    return v2

    .line 1171
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mServiceIDsFromMetaData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1172
    .local v6, "sid":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1173
    return v3

    .line 1175
    .end local v6    # "sid":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 1177
    .end local v1    # "activeNetwork":I
    .end local v4    # "isEasyMode":Z
    :cond_4
    goto :goto_4

    .line 1159
    .restart local v1    # "activeNetwork":I
    :cond_5
    :goto_2
    const-string v3, "isServiceActivated: current network is 2G, return "

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1160
    return v2

    .line 1178
    .end local v1    # "activeNetwork":I
    :cond_6
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "icsiServiceId":Ljava/lang/String;
    const-string v4, "callunanswered"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1180
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPostCallAuth:[Z

    aget-boolean v2, v2, v0

    return v2

    .line 1181
    :cond_7
    const-string v4, "callcomposer"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1182
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mComposerAuth:[Z

    aget-boolean v2, v2, v0

    return v2

    .line 1183
    :cond_8
    const-string/jumbo v4, "sharedmap"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1184
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedMapAuth:[Z

    aget-boolean v2, v2, v0

    return v2

    .line 1185
    :cond_9
    const-string/jumbo v4, "sharedsketch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1186
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedSketchAuth:[Z

    aget-boolean v2, v2, v0

    return v2

    .line 1188
    :cond_a
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mServiceIDsFromMetaData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1189
    .local v5, "sid":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1190
    return v3

    .line 1192
    .end local v5    # "sid":Ljava/lang/String;
    :cond_b
    goto :goto_3

    .line 1196
    .end local v1    # "icsiServiceId":Ljava/lang/String;
    :cond_c
    :goto_4
    return v2
.end method

.method public isServiceRegistered()Z
    .locals 1

    .line 760
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWifiConnected()Z
    .locals 9

    .line 1300
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1301
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 1302
    .local v1, "netInfo":[Landroid/net/Network;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1303
    .local v5, "nw":Landroid/net/Network;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 1304
    .local v6, "ni":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1305
    sget-object v2, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return v8

    .line 1302
    .end local v5    # "nw":Landroid/net/Network;
    .end local v6    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1309
    :cond_1
    return v3
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .line 764
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->NAME:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return-void
.end method

.method public needDeRegister(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDeRegister "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 770
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    .line 771
    .local v0, "oldApps":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo()V

    .line 772
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->canRegisterExt:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isServiceRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 774
    const/4 v1, 0x1

    return v1

    .line 777
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public needRegister(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needRegister "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 783
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    .line 784
    .local v0, "oldApps":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo()V

    .line 785
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->canRegisterExt:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isServiceRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    const/4 v1, 0x1

    return v1

    .line 790
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAddParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 330
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onBlockedMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 480
    return-void
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .locals 6
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 1388
    .local p2, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    const/4 v0, 0x0

    .line 1389
    .local v0, "nConnectedCalls":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1391
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 1392
    .local v2, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1393
    add-int/lit8 v0, v0, 0x1

    .line 1394
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 1395
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1396
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1399
    .end local v2    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    goto :goto_0

    .line 1401
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nConnecteCalls = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    if-le v0, v3, :cond_2

    .line 1403
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1405
    :cond_2
    return-void
.end method

.method public onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 383
    return-void
.end method

.method public onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 378
    return-void
.end method

.method public onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 373
    return-void
.end method

.method public onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "icon_path"    # Ljava/lang/String;

    .line 368
    return-void
.end method

.method public onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 352
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 346
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 363
    return-void
.end method

.method public onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .line 357
    return-void
.end method

.method public onChatClosed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V
    .locals 0
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 308
    return-void
.end method

.method public onChatDeparted(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 313
    return-void
.end method

.method public onChatEstablished(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 274
    return-void
.end method

.method public onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
    .locals 6
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "state"    # Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessionStates:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 285
    .local v0, "oldState":Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p2, v1, :cond_1

    .line 286
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne v0, v1, :cond_0

    .line 287
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->FAILED_MEDIA:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 288
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onChatStatusUpdate: State is FAILED MEDIA"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;

    .line 294
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChatStatusUpdate: isEnableFailedMedia = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-interface {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;->onStateChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    .line 296
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
    goto :goto_0

    .line 298
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p2, v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessionStates:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 300
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-eq p2, v1, :cond_4

    .line 301
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessionStates:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_4
    :goto_1
    return-void
.end method

.method public onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subjectData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 455
    return-void
.end method

.method public onComposingReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "chat"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "eventUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "userAlias"    # Ljava/lang/String;
    .param p4, "isComposing"    # Z
    .param p5, "interval"    # I

    .line 319
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 803
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    .line 804
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sendMessage(Landroid/os/Message;)Z

    .line 805
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 795
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n errorcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 797
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegistrationId:I

    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 799
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 809
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 812
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 813
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 815
    .local v1, "chatId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->closeSession(Ljava/lang/String;)V

    .line 816
    .end local v1    # "chatId":Ljava/lang/String;
    goto :goto_0

    .line 818
    :cond_0
    return-void
.end method

.method public onGroupChatIconDeleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;

    .line 465
    return-void
.end method

.method public onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "iconData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 460
    return-void
.end method

.method public onGroupChatLeaderChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "participants"    # Ljava/lang/String;

    .line 429
    return-void
.end method

.method public onGroupChatLeaderInformed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "participants"    # Ljava/lang/String;

    .line 434
    return-void
.end method

.method public onImErrorReport(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)V
    .locals 0
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "phoneId"    # I

    .line 445
    return-void
.end method

.method public onIncomingMessageProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "msgEvent"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 279
    return-void
.end method

.method public onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;Z)V
    .locals 0
    .param p1, "msgevent"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "accepted"    # Z

    .line 440
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 214
    return-void
.end method

.method public onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .param p3, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ")V"
        }
    .end annotation

    .line 1291
    .local p2, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    return-void
.end method

.method public onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1278
    .local p2, "imdnId":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 209
    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 242
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 9
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 248
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-eq v0, v1, :cond_9

    .line 249
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$2;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 265
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->toString()Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v7

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v2

    :cond_0
    move-object v8, v2

    .line 265
    const-string v5, "5"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)Z

    goto/16 :goto_2

    .line 261
    :cond_1
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->toString()Ljava/lang/String;

    move-result-object v6

    .line 262
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v7

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v2

    :cond_2
    move-object v8, v2

    .line 261
    const-string v5, "3"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)Z

    .line 263
    goto :goto_2

    .line 256
    :cond_3
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 257
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_4
    move-object v6, v2

    .line 258
    :goto_0
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v7

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v2

    :cond_5
    move-object v8, v2

    .line 256
    const-string v5, "2"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)Z

    .line 259
    goto :goto_2

    .line 251
    :cond_6
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 252
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_7
    move-object v6, v2

    .line 253
    :goto_1
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v7

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v2

    :cond_8
    move-object v8, v2

    .line 251
    const-string v5, "1"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)Z

    .line 269
    :cond_9
    :goto_2
    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 218
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, "0"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 223
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 224
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMessageSendingSucceeded: Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;

    .line 229
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
    invoke-interface {v2, v0}, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;->onMessagesFlushed(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 230
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
    goto :goto_0

    .line 232
    :cond_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isWaitingForCloseTagSendingComplete:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 233
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMessageSendingSucceeded : EVENT_CLOSE_SESSION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->removeMessages(I)V

    .line 235
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sendMessage(Landroid/os/Message;)Z

    .line 237
    :cond_2
    return-void
.end method

.method public onNotifyParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p2, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    return-void
.end method

.method public onNotifyParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 413
    .local p2, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    return-void
.end method

.method public onNotifyParticipantsKickedOut(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 424
    .local p2, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    return-void
.end method

.method public onNotifyParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 419
    .local p2, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Ljava/util/Date;>;"
    return-void
.end method

.method public onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 470
    return-void
.end method

.method public onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    return-void
.end method

.method public onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 389
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    return-void
.end method

.method public onParticipantsUpdated(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 395
    .local p2, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    return-void
.end method

.method public onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 450
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 8
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 822
    if-nez p1, :cond_0

    .line 823
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "regiInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void

    .line 826
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 827
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 828
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 831
    .local v1, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v1, :cond_1

    .line 832
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegistrationId:I

    .line 835
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 837
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 838
    .local v3, "impu":Lcom/sec/ims/util/ImsUri;
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 840
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    .line 841
    const-string/jumbo v5, "use_sipuri_for_urigenerator"

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 842
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/NameAddr;

    .line 843
    .local v5, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v5}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v6

    sget-object v7, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v6, v7, :cond_2

    .line 844
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v4

    invoke-virtual {v5}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 845
    goto :goto_1

    .line 847
    .end local v5    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_2
    goto :goto_0

    .line 850
    :cond_3
    :goto_1
    const-string/jumbo v4, "options"

    invoke-virtual {p1, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 851
    const-string v4, "ec"

    invoke-virtual {p1, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 852
    const-string/jumbo v4, "vs"

    invoke-virtual {p1, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 853
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v4

    .line 854
    .local v4, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    if-eqz v4, :cond_4

    .line 855
    invoke-interface {v4, v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->exchangeCapabilitiesForVSHOnRegi(ZI)V

    .line 858
    .end local v4    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    :cond_4
    return-void
.end method

.method public onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 341
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 335
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    return-void
.end method

.method public onRequestIncomingFtTransferPath()Ljava/lang/String;
    .locals 2

    .line 1358
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1359
    .local v0, "fileDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1362
    :cond_0
    return-object v1
.end method

.method public onRequestSendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 475
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;

    .line 890
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceSwitched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateFeatures(I)V

    .line 892
    return-void
.end method

.method public onSimChanged(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 862
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onSimChanged(I)V

    .line 863
    return-void
.end method

.method public registerApp()V
    .locals 2

    .line 870
    const-string/jumbo v0, "registerApp"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 873
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mIariTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 877
    .local v1, "serviceID":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->buildServiceConfig(Ljava/lang/String;)V

    .line 878
    .end local v1    # "serviceID":Ljava/lang/String;
    goto :goto_0

    .line 885
    :cond_1
    const-string/jumbo v0, "register ext done"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public registerMessagingSessionListener(Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    return-void
.end method

.method public removeFromRevokingMessages(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1286
    .local p1, "imdnIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method public sendInstantMultimediaMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)V
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "content"    # [B
    .param p4, "contentType"    # Ljava/lang/String;

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendInstantMultimediaMessage,serviceId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getMessagingSession(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1205
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->createOutgoingMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v1

    .line 1208
    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1210
    .end local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    :cond_0
    return-void
.end method

.method public sendMultimediaMessage(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "contents"    # [B
    .param p3, "contentType"    # Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 513
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 514
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendMultimediaMessage: Session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void

    .line 518
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->createOutgoingMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v1

    .line 520
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 521
    return-void
.end method

.method public setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "b"    # Z
    .param p3, "imsi"    # Ljava/lang/String;

    .line 485
    return-void
.end method

.method public start()V
    .locals 3

    .line 896
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 898
    const-string v0, "SessionModule start"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 902
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImSessionClosed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 904
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForMessageFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 906
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 910
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 912
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 914
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingSession(Landroid/os/Handler;)V

    .line 915
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImSessionEstablished(Landroid/os/Handler;)V

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImSessionClosed(Landroid/os/Handler;)V

    .line 917
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingMessage(Landroid/os/Handler;)V

    .line 918
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForMessageFailed(Landroid/os/Handler;)V

    .line 919
    const-string v0, "SessionModule stop"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method public updateAppInfo()V
    .locals 1

    .line 1099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->canRegisterExt:Z

    .line 1100
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mIariTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1102
    const-string v0, "com.gsma.services.rcs.extension.action.NEW_MESSAGING_SESSION"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo(Ljava/lang/String;)V

    .line 1103
    const-string v0, "com.gsma.services.rcs.extension.action.NEW_STREAMING_SESSION"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo(Ljava/lang/String;)V

    .line 1104
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->canRegisterExt:Z

    .line 1107
    :cond_0
    return-void
.end method

.method public updateAppInfo(Ljava/lang/String;)V
    .locals 13
    .param p1, "type"    # Ljava/lang/String;

    .line 1110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1111
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "com.gsma.services.rcs/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1117
    .local v1, "lsr":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_4

    .line 1118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1119
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1120
    .local v4, "applicationName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new app name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1121
    const/4 v5, 0x0

    .line 1122
    .local v5, "app":Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;
    sget-object v6, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    monitor-enter v6

    .line 1123
    :try_start_0
    sget-object v7, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1124
    sget-object v7, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;

    move-object v5, v7

    goto :goto_1

    .line 1126
    :cond_0
    new-instance v7, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;

    invoke-direct {v7, v4}, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 1128
    :goto_1
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v7, :cond_3

    .line 1129
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v7

    .line 1130
    .local v7, "count":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v7, :cond_2

    .line 1132
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v10, v9}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v10

    .line 1133
    .local v10, "dataType":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1134
    .local v11, "extType":Ljava/lang/String;
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mIariTypes:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1136
    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mIariTypes:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    .end local v10    # "dataType":Ljava/lang/String;
    .end local v11    # "extType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1139
    .end local v9    # "i":I
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 1140
    invoke-virtual {v5, p1, v8}, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->addType(Ljava/lang/String;Ljava/util/List;)V

    .line 1143
    .end local v7    # "count":I
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v6

    .line 1144
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "applicationName":Ljava/lang/String;
    .end local v5    # "app":Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;
    goto/16 :goto_0

    .line 1143
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "applicationName":Ljava/lang/String;
    .restart local v5    # "app":Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1146
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "applicationName":Ljava/lang/String;
    .end local v5    # "app":Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;
    :cond_4
    return-void
.end method
