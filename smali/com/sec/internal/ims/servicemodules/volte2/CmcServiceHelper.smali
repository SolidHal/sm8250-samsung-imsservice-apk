.class public Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
.super Landroid/os/Handler;
.source "CmcServiceHelper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;
.implements Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;


# static fields
.field private static final CMC_HANDOVER_TIMER_VALUE:I = 0x1388

.field private static final CMC_PD_CHECK_TIMER_VALUE:I = 0x14

.field private static final DIVIDABLE64:I = 0x3f

.field private static final DUMMY_CALL_DOMAIN:I = 0x9

.field private static final DUPLICATED_PUBLISH_DENY_TIME_IN_MILLI:J = 0x1f4L

.field private static final EVENT_OPTIONS_EVENT:I = 0x20

.field private static final EVENT_P2P_OPTIONS_EVENT:I = 0x1f

.field private static final EVT_CMC_HANDOVER_TIMER:I = 0x22

.field private static final EVT_CMC_INFO_EVENT:I = 0x23

.field private static final EVT_CMC_PD_CHECK_TIMER:I = 0x21

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCmcCallEstablishTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcHandoverTimer:Landroid/os/Message;

.field private final mCmcPdCheckTimeOut:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcTotalMnoPullable:Z

.field private final mContext:Landroid/content/Context;

.field private final mCsPublishDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/PublishDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mExtConfirmedCsCallCnt:I

.field private mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field private final mIsCmcPdCheckRespRecevied:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

.field private mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field private mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

.field private mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

.field private mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

.field private mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/constants/ims/servicemodules/Registration;",
            ">;"
        }
    .end annotation
.end field

.field private mSendPublishDigest:Ljava/security/MessageDigest;

.field private mSendPublishHashedXml:[B

.field private mSendPublishInvokeCount:I

.field private mSendPublishInvokeTime:J

.field private mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespRecevied:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 94
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 95
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 103
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;I)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "volteServiceInterface"    # Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .param p5, "mediaController"    # Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
    .param p6, "imsCallSessionManager"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
    .param p7, "optionsServiceInterface"    # Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;
    .param p8, "phoneCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/constants/ims/servicemodules/Registration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;",
            "Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;",
            "I)V"
        }
    .end annotation

    .line 109
    .local p3, "registrationList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/internal/constants/ims/servicemodules/Registration;>;"
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespRecevied:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 94
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 95
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 111
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    .line 112
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 113
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 114
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 115
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 116
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 117
    new-array v0, p8, [Lcom/sec/ims/DialogEvent;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    .line 119
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private checkIgnorePublishDialogCase(IZZ)Z
    .locals 3
    .param p1, "callType"    # I
    .param p2, "isAudioEmergency"    # Z
    .param p3, "isVideoEmergency"    # Z

    .line 867
    const/4 v0, 0x0

    .line 869
    .local v0, "returnBoolean":Z
    if-nez p1, :cond_0

    .line 870
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "CallType is unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v0, 0x1

    goto :goto_0

    .line 872
    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    .line 873
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ignore publish dialog when call type is 911 (Emergency)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v0, 0x1

    .line 876
    :cond_2
    :goto_0
    return v0
.end method

.method private checkPdAvailability(ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "pdCheckData"    # Landroid/os/Bundle;

    .line 1231
    const-string/jumbo v0, "uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "uriStr":Ljava/lang/String;
    const-string/jumbo v1, "reg_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1233
    .local v8, "regId":I
    const-string v1, "is_first_check"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1235
    .local v9, "isFirstCheck":Z
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPdAvailability(), isFirstCheck: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespRecevied:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1237
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespRecevied:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v9, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "no 200 OK(OPTION) response from PD, remove pulling UI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1244
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    aget-object v1, v1, p1

    .line 1245
    .local v1, "de":Lcom/sec/ims/DialogEvent;
    invoke-virtual {v1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1246
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    goto :goto_1

    .line 1238
    .end local v1    # "de":Lcom/sec/ims/DialogEvent;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {v1, p1, v8, v0}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->requestSendCmcCheckMsg(IILjava/lang/String;)V

    .line 1239
    const-wide/16 v3, 0x4e20

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v5, v8

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    .line 1240
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespRecevied:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    :cond_2
    :goto_1
    return-void
.end method

.method private getActiveCmcCallEstablishTime()J
    .locals 7

    .line 649
    const-wide/16 v0, 0x0

    .line 650
    .local v0, "cmcCallEstablishtime":J
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 651
    .local v2, "time":J
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActiveCmcCallEstablishTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    move-wide v0, v2

    .line 653
    nop

    .line 655
    .end local v2    # "time":J
    :cond_0
    return-wide v0
.end method

.method private getCallstateForPublishDialog(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 3
    .param p1, "psCallState"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .param p2, "isEstablished"    # Z

    .line 880
    move-object v0, p1

    .line 881
    .local v0, "callstate":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v1, :cond_0

    .line 882
    if-eqz p2, :cond_0

    .line 883
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "forced InCall state change for fast establishment [delayed ACK case]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 887
    :cond_0
    return-object v0
.end method

.method private getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "cmcType"    # I

    .line 1296
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 1297
    .local v1, "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1298
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0

    .line 1300
    .end local v1    # "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    :cond_0
    goto :goto_0

    .line 1302
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDialogCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)I
    .locals 3
    .param p1, "psCallState"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .param p2, "isRemoteHeld"    # Z

    .line 898
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "session.mRemoteHeld : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, "callState":I
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isHoldCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 903
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isActiveCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 904
    const/4 v0, 0x1

    goto :goto_1

    .line 902
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 906
    :cond_2
    :goto_1
    return v0
.end method

.method private getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I
    .locals 1
    .param p1, "psCallState"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 891
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v0, :cond_0

    .line 892
    const/4 v0, 0x3

    return v0

    .line 894
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCmcPrimaryType(I)Z
    .locals 2
    .param p1, "cmcType"    # I

    .line 1369
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    .line 1378
    const/4 v0, 0x0

    return v0

    .line 1374
    :cond_0
    return v0
.end method

.method private isCmcSecondaryType(I)Z
    .locals 1
    .param p1, "cmcType"    # I

    .line 1382
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1390
    const/4 v0, 0x0

    return v0

    .line 1386
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isDuplicatedPublishDialog(Ljava/lang/String;)Z
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 703
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 704
    .local v2, "previousInvokeTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 706
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 707
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 709
    .local v0, "hashedXml":[B
    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishHashedXml:[B

    .line 710
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 711
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    and-int/lit8 v5, v4, 0x3f

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 712
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    const-string v1, "[%d] sendPublishDialog duplicated."

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 716
    const/16 v4, 0x32

    if-le v1, v4, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 717
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many sendPublishDialog is called in very short time!\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 719
    :cond_2
    :goto_0
    return v6

    .line 721
    :cond_3
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 722
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishHashedXml:[B

    .line 724
    .end local v0    # "hashedXml":[B
    .end local v2    # "previousInvokeTime":J
    :cond_4
    return v1
.end method

.method private isP2pPrimaryType(I)Z
    .locals 1
    .param p1, "cmcType"    # I

    .line 1394
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 1402
    const/4 v0, 0x0

    return v0

    .line 1398
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private makeReplaceProfile(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 2
    .param p1, "previousProfile"    # Lcom/sec/ims/volte2/data/CallProfile;

    .line 1333
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 1336
    .local v0, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setReplaceSipCallId(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v1

    if-nez v1, :cond_0

    .line 1341
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    goto :goto_0

    .line 1343
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 1347
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1348
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setPhoneId(I)V

    .line 1349
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setAlertInfo(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setEmergencyRat(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 1354
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 1355
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setLineMsisdn(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 1357
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    .line 1358
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 1359
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setForceCSFB(Z)V

    .line 1360
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setNetworkType(I)V

    .line 1362
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isSamsungMdmnCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setSamsungMdmnCall(Z)V

    .line 1364
    return-object v0
.end method

.method private onCmcHandoverTimerExpired(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1327
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCmcHandoverTimerExpired handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->clearAllCallInternal(I)V

    .line 1330
    return-void
.end method


# virtual methods
.method checkCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 10
    .param p1, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;

    .line 672
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    .line 673
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object v0

    .line 674
    .local v0, "deviceList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;>;"
    const/4 v1, 0x0

    .line 675
    .local v1, "p2pSize":I
    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 676
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 677
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P2P list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    if-eqz p2, :cond_2

    .line 679
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 680
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 681
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Do not set p2p list in case of CMC handover"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 683
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v3, "p2pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 685
    .local v5, "info":Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;
    invoke-virtual {v5}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v6

    .line 686
    .local v6, "impu":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 687
    .local v7, "deviceId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sip:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "@samsungims.com;gr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    .end local v5    # "info":Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;
    .end local v6    # "impu":Ljava/lang/String;
    .end local v7    # "deviceId":Ljava/lang/String;
    goto :goto_0

    .line 689
    :cond_1
    invoke-virtual {p2, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setP2p(Ljava/util/List;)V

    .line 693
    .end local v3    # "p2pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    if-ge v1, v2, :cond_3

    .line 694
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "need p2p discovery"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    .line 698
    .end local v0    # "deviceList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;>;"
    .end local v1    # "p2pSize":I
    :cond_3
    return-void
.end method

.method filterOngoingDialogFromDialogEvent(Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;
    .locals 5
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;

    .line 1147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v0, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/Dialog;

    .line 1149
    .local v2, "d":Lcom/sec/ims/Dialog;
    if-eqz v2, :cond_0

    .line 1150
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasSipCallId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1151
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    .end local v2    # "d":Lcom/sec/ims/Dialog;
    :cond_0
    goto :goto_0

    .line 1155
    :cond_1
    new-instance v1, Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1156
    .local v1, "tmpDe":Lcom/sec/ims/DialogEvent;
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    .line 1157
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    .line 1158
    return-object v1
.end method

.method public forwardCmcRecordingEventToSD(IIII)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "event"    # I
    .param p3, "extra"    # I
    .param p4, "sessionId"    # I

    .line 1252
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forwardCmcRecordingEventToSD, recordEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1258
    .local v0, "pdSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1259
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v1

    .line 1260
    .local v1, "boundedExtSessId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    .line 1262
    .local v2, "extSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v2, :cond_0

    .line 1263
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "send CmcRecordingEvent to SD during cmc call relay"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v3

    .line 1266
    .local v3, "extSipCallId":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1267
    .local v4, "cmcInfoData":Landroid/os/Bundle;
    const-string/jumbo v5, "record_event"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1268
    const-string v5, "extra"

    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1269
    const-string/jumbo v5, "sip_call_id"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v5, p4, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendCmcInfo(ILandroid/os/Bundle;)I

    .line 1274
    .end local v0    # "pdSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v1    # "boundedExtSessId":I
    .end local v2    # "extSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "extSipCallId":Ljava/lang/String;
    .end local v4    # "cmcInfoData":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method getCallCountForSendPublishDialog(ILcom/sec/ims/ImsRegistration;Ljava/util/List;Z)[I
    .locals 45
    .param p1, "phoneId"    # I
    .param p2, "cmcRegi"    # Lcom/sec/ims/ImsRegistration;
    .param p4, "cmcTotalMnoPullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/ims/ImsRegistration;",
            "Ljava/util/List<",
            "Lcom/sec/ims/Dialog;",
            ">;Z)[I"
        }
    .end annotation

    .line 782
    .local p3, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 783
    .local v2, "ret":[I
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 784
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v4, :cond_f

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 785
    goto :goto_0

    .line 788
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 789
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v5, :cond_e

    .line 790
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    .line 791
    .local v6, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v7

    if-nez v7, :cond_d

    .line 792
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v7

    .line 793
    .local v7, "sipCallId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sip:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";gr="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 794
    .local v27, "deviceId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 795
    .local v28, "localUri":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 796
    .local v29, "remoteUri":Ljava/lang/String;
    const-string/jumbo v30, "test_local_tag"

    .line 797
    .local v30, "sipLocalTag":Ljava/lang/String;
    const-string/jumbo v31, "test_remote_tag"

    .line 798
    .local v31, "sipRemoteTag":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    .line 799
    .local v8, "sessionDesc":Ljava/lang/String;
    move-object v9, v7

    .line 800
    .local v9, "dialogId":Ljava/lang/String;
    const/4 v10, 0x1

    .line 802
    .local v10, "isInternalCallPullable":Z
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v11

    iget-boolean v12, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    invoke-direct {v0, v11, v12}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCallstateForPublishDialog(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v15

    .line 806
    .local v15, "psCallState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v11

    const/16 v32, 0x0

    const/4 v14, 0x1

    if-eqz v11, :cond_1

    .line 807
    move/from16 v20, v32

    goto :goto_1

    :cond_1
    move/from16 v20, v14

    .line 810
    .local v20, "direction":I
    :goto_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v13

    .line 811
    .local v13, "callType":I
    invoke-static {v13}, Lcom/sec/internal/helper/ImsCallUtil;->isEmergencyAudioCall(I)Z

    move-result v12

    .line 812
    .local v12, "isAudioEmergency":Z
    invoke-static {v13}, Lcom/sec/internal/helper/ImsCallUtil;->isEmergencyVideoCall(I)Z

    move-result v11

    .line 814
    .local v11, "isVideoEmergency":Z
    invoke-direct {v0, v13, v12, v11}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkIgnorePublishDialogCase(IZZ)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 815
    goto/16 :goto_0

    .line 818
    :cond_2
    const/16 v16, 0x0

    .line 819
    .local v16, "audioDir":I
    const/16 v17, 0x0

    .line 820
    .local v17, "videoDir":I
    if-ne v13, v14, :cond_3

    .line 821
    const/4 v10, 0x1

    .line 822
    invoke-direct {v0, v15}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v16

    move/from16 v33, v16

    move/from16 v34, v17

    goto :goto_2

    .line 823
    :cond_3
    if-le v13, v14, :cond_4

    .line 824
    const/4 v10, 0x0

    .line 825
    invoke-direct {v0, v15}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v16

    .line 826
    invoke-direct {v0, v15}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v17

    move/from16 v33, v16

    move/from16 v34, v17

    goto :goto_2

    .line 823
    :cond_4
    move/from16 v33, v16

    move/from16 v34, v17

    .line 829
    .end local v16    # "audioDir":I
    .end local v17    # "videoDir":I
    .local v33, "audioDir":I
    .local v34, "videoDir":I
    :goto_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 830
    const/4 v10, 0x0

    .line 831
    const-string v8, "Conference call"

    move-object/from16 v35, v8

    goto :goto_3

    .line 829
    :cond_5
    move-object/from16 v35, v8

    .line 835
    .end local v8    # "sessionDesc":Ljava/lang/String;
    .local v35, "sessionDesc":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isRemoteHeld()Z

    move-result v8

    invoke-direct {v0, v15, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)I

    move-result v8

    .line 836
    .local v8, "callState":I
    if-eq v8, v14, :cond_6

    .line 837
    const/4 v10, 0x0

    move/from16 v36, v10

    goto :goto_4

    .line 836
    :cond_6
    move/from16 v36, v10

    .line 840
    .end local v10    # "isInternalCallPullable":Z
    .local v36, "isInternalCallPullable":Z
    :goto_4
    if-eqz v36, :cond_8

    if-nez p4, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v25, v32

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v25, v14

    .line 842
    .local v25, "isExclusive":Z
    :goto_6
    invoke-static {v15}, Lcom/sec/internal/helper/ImsCallUtil;->isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 844
    aget v10, v2, v14

    add-int/2addr v10, v14

    aput v10, v2, v14

    goto :goto_7

    .line 845
    :cond_9
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v15, v10, :cond_a

    invoke-static {v15}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 846
    :cond_a
    const/4 v10, 0x2

    aget v16, v2, v10

    add-int/lit8 v16, v16, 0x1

    aput v16, v2, v10

    .line 849
    :cond_b
    :goto_7
    invoke-static {v15}, Lcom/sec/internal/helper/ImsCallUtil;->convertImsCallStateToDialogState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v37

    .local v37, "dialogState":I
    move/from16 v19, v37

    .line 851
    new-instance v38, Lcom/sec/ims/Dialog;

    move/from16 v39, v8

    .end local v8    # "callState":I
    .local v39, "callState":I
    move-object/from16 v8, v38

    const/16 v26, 0x0

    const-string v16, ""

    const-string v17, ""

    move-object/from16 v10, v27

    move/from16 v40, v11

    .end local v11    # "isVideoEmergency":Z
    .local v40, "isVideoEmergency":Z
    move-object v11, v7

    move/from16 v41, v12

    .end local v12    # "isAudioEmergency":Z
    .local v41, "isAudioEmergency":Z
    move-object/from16 v12, v30

    move/from16 v42, v13

    .end local v13    # "callType":I
    .local v42, "callType":I
    move-object/from16 v13, v31

    move/from16 v43, v14

    move-object/from16 v14, v28

    move-object/from16 v44, v15

    .end local v15    # "psCallState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .local v44, "psCallState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    move-object/from16 v15, v29

    move-object/from16 v18, v35

    move/from16 v21, v42

    move/from16 v22, v39

    move/from16 v23, v33

    move/from16 v24, v34

    invoke-direct/range {v8 .. v26}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    .line 854
    .local v8, "dlg":Lcom/sec/ims/Dialog;
    sget-object v10, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v2, v32

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 857
    move-object/from16 v10, p3

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 856
    :cond_c
    move-object/from16 v10, p3

    .line 859
    :goto_8
    aget v11, v2, v32

    add-int/lit8 v11, v11, 0x1

    aput v11, v2, v32

    goto :goto_9

    .line 791
    .end local v7    # "sipCallId":Ljava/lang/String;
    .end local v8    # "dlg":Lcom/sec/ims/Dialog;
    .end local v9    # "dialogId":Ljava/lang/String;
    .end local v20    # "direction":I
    .end local v25    # "isExclusive":Z
    .end local v27    # "deviceId":Ljava/lang/String;
    .end local v28    # "localUri":Ljava/lang/String;
    .end local v29    # "remoteUri":Ljava/lang/String;
    .end local v30    # "sipLocalTag":Ljava/lang/String;
    .end local v31    # "sipRemoteTag":Ljava/lang/String;
    .end local v33    # "audioDir":I
    .end local v34    # "videoDir":I
    .end local v35    # "sessionDesc":Ljava/lang/String;
    .end local v36    # "isInternalCallPullable":Z
    .end local v37    # "dialogState":I
    .end local v39    # "callState":I
    .end local v40    # "isVideoEmergency":Z
    .end local v41    # "isAudioEmergency":Z
    .end local v42    # "callType":I
    .end local v44    # "psCallState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :cond_d
    move-object/from16 v10, p3

    goto :goto_9

    .line 789
    .end local v6    # "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_e
    move-object/from16 v10, p3

    .line 862
    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :goto_9
    goto/16 :goto_0

    .line 784
    .restart local v4    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_f
    move-object/from16 v10, p3

    goto/16 :goto_0

    .line 863
    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_10
    move-object/from16 v10, p3

    return-object v2
.end method

.method public getCmcCallEstablishTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 634
    const-wide/16 v0, 0x0

    .line 635
    .local v0, "cmcCallEstablishtime":J
    if-nez p1, :cond_0

    .line 636
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "callid is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getActiveCmcCallEstablishTime()J

    move-result-wide v2

    return-wide v2

    .line 639
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 640
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 642
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mCmcCallEstablishTimeMap is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_0
    return-wide v0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 7

    .line 1407
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCmcCallInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineSlotIndex()I

    move-result v0

    .line 1409
    .local v0, "lineSlotId":I
    const/4 v1, 0x0

    .line 1410
    .local v1, "cmcType":I
    const/4 v2, 0x0

    .line 1411
    .local v2, "cmcCallState":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 1413
    .local v3, "pdDeviceId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1414
    .local v5, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    if-lez v6, :cond_4

    .line 1415
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    :goto_1
    move v1, v4

    .line 1416
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v4, v6, :cond_1

    .line 1417
    const/4 v2, 0x1

    goto :goto_3

    .line 1418
    :cond_1
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v6, :cond_3

    .line 1419
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v4, v6, :cond_2

    goto :goto_2

    .line 1421
    :cond_2
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v6, :cond_5

    .line 1422
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v6, :cond_5

    .line 1423
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v6, :cond_5

    .line 1424
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v6, :cond_5

    .line 1425
    const/4 v2, 0x3

    goto :goto_3

    .line 1420
    :cond_3
    :goto_2
    const/4 v2, 0x2

    goto :goto_3

    .line 1429
    .end local v5    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_4
    goto :goto_0

    .line 1431
    :cond_5
    :goto_3
    new-instance v4, Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    invoke-direct {v4}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;-><init>()V

    .line 1432
    invoke-virtual {v4, v0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setLineSlotId(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object v4

    .line 1433
    invoke-virtual {v4, v1}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setCmcType(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object v4

    .line 1434
    invoke-virtual {v4, v2}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setCallState(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object v4

    .line 1435
    invoke-virtual {v4, v3}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setPdDeviceId(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object v4

    .line 1436
    .local v4, "builder":Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    invoke-virtual {v4}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->build()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object v5

    .line 1437
    .local v5, "callInfo":Lcom/sec/ims/cmc/CmcCallInfo;
    return-object v5
.end method

.method public getCmcRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 4
    .param p1, "regId"    # I

    .line 1306
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 1307
    .local v1, "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1308
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmcRegistration: found regId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0

    .line 1311
    .end local v1    # "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    :cond_0
    goto :goto_0

    .line 1312
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "isEmergency"    # Z
    .param p3, "cmcType"    # I

    .line 1285
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 1286
    .local v1, "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1287
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 1288
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0

    .line 1290
    .end local v1    # "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    :cond_0
    goto :goto_0

    .line 1292
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4
    .param p1, "cmcType"    # I

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "returnSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 220
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 221
    move-object v0, v2

    .line 223
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 224
    :cond_1
    return-object v0
.end method

.method public getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4
    .param p1, "cmcType"    # I
    .param p2, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "returnSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 232
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 233
    move-object v0, v2

    .line 235
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 236
    :cond_1
    return-object v0
.end method

.method public getSessionCountByCmcType(II)I
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "cmcType"    # I

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "count":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 279
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 280
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 282
    .local v4, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 283
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 287
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v4    # "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 288
    :cond_1
    return v0
.end method

.method getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "curReg"    # Lcom/sec/ims/ImsRegistration;

    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 661
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 662
    .local v1, "curProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    .line 663
    .local v2, "curCmcType":I
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curCmcType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result v3

    return v3

    .line 666
    .end local v1    # "curProfile":Lcom/sec/ims/settings/ImsProfile;
    .end local v2    # "curCmcType":I
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "curReg null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1443
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1484
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1485
    .local v0, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;

    .line 1486
    .local v1, "cmcInfoEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Received EVT_CMC_INFO_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcRecordingInfo(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V

    .line 1488
    goto/16 :goto_0

    .line 1480
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "cmcInfoEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcHandoverTimerExpired(Lcom/sec/ims/ImsRegistration;)V

    .line 1481
    goto/16 :goto_0

    .line 1445
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkPdAvailability(ILandroid/os/Bundle;)V

    .line 1446
    goto/16 :goto_0

    .line 1449
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1450
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 1451
    .local v1, "optionEvent":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received EVENT_OPTIONS_EVENT, isSuccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1454
    .local v2, "cmcRegi":Lcom/sec/ims/ImsRegistration;
    const/4 v3, 0x0

    .line 1455
    .local v3, "cmcType":I
    if-eqz v2, :cond_0

    .line 1456
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    .line 1458
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "optionEvent regi handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cmcType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1461
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    goto/16 :goto_0

    .line 1462
    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcSecondaryType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1463
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1464
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1465
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespRecevied:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1467
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR Resopnse, remove pulling UI, optionFailReason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getReason()Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1469
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v5

    aget-object v4, v4, v5

    .line 1470
    .local v4, "de":Lcom/sec/ims/DialogEvent;
    invoke-virtual {v4}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1471
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 1472
    .end local v4    # "de":Lcom/sec/ims/DialogEvent;
    goto :goto_0

    .line 1474
    :cond_3
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "CmcPdCheckTimer is not running"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1491
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "optionEvent":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;
    .end local v2    # "cmcRegi":Lcom/sec/ims/ImsRegistration;
    .end local v3    # "cmcType":I
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 1492
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 1493
    .local v1, "event":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received EVENT_P2P_OPTIONS_EVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v3

    aget-object v2, v2, v3

    .line 1496
    .local v2, "de":Lcom/sec/ims/DialogEvent;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V

    .line 1497
    nop

    .line 1502
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "event":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;
    .end local v2    # "de":Lcom/sec/ims/DialogEvent;
    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasActiveCmcCallsession(I)Z
    .locals 4
    .param p1, "cmcType"    # I

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "activeCallStates":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;>;"
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 253
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    const/4 v1, 0x1

    return v1

    .line 256
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method hasDialingOrIncomingCall()Z
    .locals 2

    .line 1018
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1019
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1020
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1018
    :cond_1
    return v1
.end method

.method hasInternalCallToIgnorePublishDialog(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 910
    const/4 v0, 0x0

    .line 912
    .local v0, "returnBoolean":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 913
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v2, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 914
    goto :goto_0

    .line 917
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 918
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_3

    .line 919
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 920
    .local v4, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcPrimaryType(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 921
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_2

    .line 922
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v6, :cond_3

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    .line 923
    :cond_2
    const/4 v0, 0x1

    .line 927
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v4    # "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_3
    goto :goto_0

    .line 928
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPublishDialog, returnBoolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return v0
.end method

.method public init()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v1, 0x23

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public isCallServiceAvailableOnSecondary(ILjava/lang/String;Z)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "isRunning"    # Z

    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, "sdRegInfo":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x2

    .local v1, "cmcType":I
    :goto_0
    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    .line 983
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 984
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 985
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallServiceAvailableOnSecondary phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 982
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 989
    .end local v1    # "cmcType":I
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "disallow Call Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v1, 0x0

    return v1
.end method

.method public isCmcRegExist(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 262
    const/4 v0, 0x0

    .line 264
    .local v0, "returnBoolean":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 265
    .local v2, "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 266
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 267
    .local v3, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    const/4 v0, 0x1

    .line 271
    .end local v2    # "reg":Lcom/sec/internal/constants/ims/servicemodules/Registration;
    .end local v3    # "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 272
    :cond_1
    return v0
.end method

.method isNeedDelayToSendPublishDialog(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 933
    const/4 v0, 0x0

    .line 935
    .local v0, "returnBoolean":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 936
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v2, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 937
    goto :goto_0

    .line 940
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 941
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_2

    .line 942
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 943
    .local v4, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 944
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_2

    .line 945
    const/4 v0, 0x1

    .line 949
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v4    # "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    goto :goto_0

    .line 950
    :cond_3
    return v0
.end method

.method onCallEndedWithSendPublish(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "endedSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1089
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1091
    const/4 v0, 0x0

    .line 1092
    .local v0, "cmcRegi":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x5

    .line 1093
    .local v1, "cmcType":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    const/4 v1, 0x7

    .line 1096
    :cond_0
    const/4 v2, 0x1

    .local v2, "type":I
    :goto_0
    if-gt v2, v1, :cond_b

    .line 1097
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1098
    const/4 v4, 0x0

    .line 1099
    .local v4, "validPdCallCount":I
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1100
    .local v5, "pdActiveSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    .line 1101
    .local v6, "pdHeldSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1102
    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 1104
    :cond_2
    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v7

    if-nez v7, :cond_6

    .line 1105
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v3

    .line 1106
    .local v3, "boundSessionId":I
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1107
    .local v8, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v9

    if-ne v9, v2, :cond_4

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v9

    if-eq v9, v3, :cond_4

    .line 1108
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v9, v10, :cond_3

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v9, v10, :cond_4

    .line 1109
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1111
    .end local v8    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_4
    goto :goto_1

    .line 1112
    :cond_5
    if-nez v4, :cond_9

    .line 1113
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_2

    .line 1115
    .end local v3    # "boundSessionId":I
    :cond_6
    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v7

    if-ne v7, v2, :cond_9

    .line 1116
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveExtCallCount()I

    move-result v7

    .line 1117
    .local v7, "activeExtCallCnt":I
    if-lez v7, :cond_8

    if-nez v4, :cond_8

    iget-boolean v8, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    if-eqz v8, :cond_7

    .line 1119
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v8

    const/16 v9, 0x1777

    if-ne v8, v9, :cond_8

    .line 1120
    :cond_7
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 1123
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 1124
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v8

    const-string v9, "99991111222"

    invoke-virtual {p0, v8, v9, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendCmcCallStateForRcs(ILjava/lang/String;Z)V

    goto :goto_3

    .line 1115
    .end local v7    # "activeExtCallCnt":I
    :cond_9
    :goto_2
    nop

    .line 1096
    .end local v4    # "validPdCallCount":I
    .end local v5    # "pdActiveSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v6    # "pdHeldSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 1129
    .end local v0    # "cmcRegi":Lcom/sec/ims/ImsRegistration;
    .end local v1    # "cmcType":I
    .end local v2    # "type":I
    :cond_b
    return-void
.end method

.method public onCmcDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V
    .locals 4
    .param p1, "dtmfInfo"    # Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    .line 293
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCmcDtmfInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x5

    .line 296
    .local v0, "cmcType":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const/4 v0, 0x7

    .line 299
    :cond_0
    const/4 v1, 0x1

    .local v1, "type":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 300
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    .line 301
    .local v2, "pdActiveSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCmcDtmfEvent(I)V

    .line 299
    .end local v2    # "pdActiveSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 305
    .end local v1    # "type":I
    :cond_2
    return-void
.end method

.method onCmcImsDialogEvent(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/DialogEvent;)Z
    .locals 14
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "de"    # Lcom/sec/ims/DialogEvent;

    .line 1162
    move-object v7, p0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1163
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ignoring dialog list is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return v1

    .line 1167
    :cond_0
    const/4 v8, 0x1

    if-nez p1, :cond_1

    .line 1168
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ignoring regiInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return v8

    .line 1172
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    .line 1173
    .local v9, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v9, :cond_7

    .line 1174
    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1175
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Ignore DialogEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return v1

    .line 1177
    :cond_2
    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1178
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->filterOngoingDialogFromDialogEvent(Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;

    move-result-object v10

    .line 1179
    .local v10, "tmpDe":Lcom/sec/ims/DialogEvent;
    if-eqz v10, :cond_3

    .line 1180
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Filter DialogEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    move-object v0, v10

    move-object v11, v0

    .end local p2    # "de":Lcom/sec/ims/DialogEvent;
    .local v0, "de":Lcom/sec/ims/DialogEvent;
    goto :goto_0

    .line 1179
    .end local v0    # "de":Lcom/sec/ims/DialogEvent;
    .restart local p2    # "de":Lcom/sec/ims/DialogEvent;
    :cond_3
    move-object v11, v0

    .line 1183
    .end local p2    # "de":Lcom/sec/ims/DialogEvent;
    .local v11, "de":Lcom/sec/ims/DialogEvent;
    :goto_0
    const/4 v0, 0x0

    .line 1184
    .local v0, "hasConfirmedDialogState":Z
    invoke-virtual {v11}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v12, v0

    .end local v0    # "hasConfirmedDialogState":Z
    .local v12, "hasConfirmedDialogState":Z
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/Dialog;

    .line 1185
    .local v0, "d":Lcom/sec/ims/Dialog;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getState()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 1186
    const/4 v3, 0x1

    move v12, v3

    .line 1188
    .end local v0    # "d":Lcom/sec/ims/Dialog;
    :cond_4
    goto :goto_1

    .line 1190
    :cond_5
    if-eqz v12, :cond_6

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@samsungims.com;gr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getPriDeviceIdWithURN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1192
    .local v13, "uriStr":Ljava/lang/String;
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespRecevied:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    invoke-virtual {v11}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v13

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    .line 1194
    .end local v13    # "uriStr":Ljava/lang/String;
    goto :goto_2

    .line 1195
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No cofirmed Dilaog in nofity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-virtual {v11}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1198
    :goto_2
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {v11}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    aput-object v11, v0, v1

    move-object v0, v11

    .line 1201
    .end local v10    # "tmpDe":Lcom/sec/ims/DialogEvent;
    .end local v11    # "de":Lcom/sec/ims/DialogEvent;
    .end local v12    # "hasConfirmedDialogState":Z
    .local v0, "de":Lcom/sec/ims/DialogEvent;
    :cond_7
    return v8
.end method

.method public onCmcRecordingInfo(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V
    .locals 2
    .param p1, "cmcInfoEvent"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;

    .line 1277
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCmcRecordingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1279
    .local v0, "sdAcitiveSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCmcInfoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V

    .line 1282
    :cond_0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 182
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop Nsd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->stop()V

    .line 186
    :cond_0
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 189
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 191
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistering: Send dummy publish dialog before deregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    .line 194
    :cond_0
    return-void
.end method

.method onImsCallEventWhenEstablished(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p3, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, "cmcRegi":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x5

    .line 1028
    .local v1, "cmcType":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1029
    const/4 v1, 0x7

    .line 1031
    :cond_0
    const/4 v2, 0x1

    .local v2, "type":I
    :goto_0
    if-gt v2, v1, :cond_6

    .line 1032
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1033
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    if-nez v3, :cond_5

    .line 1034
    const/4 v3, 0x0

    .line 1035
    .local v3, "validPdCallCount":I
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v4

    .line 1036
    .local v4, "pdSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v4, :cond_2

    .line 1037
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1038
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_1

    .line 1039
    add-int/lit8 v3, v3, 0x1

    .line 1041
    :cond_1
    if-nez v3, :cond_5

    .line 1042
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_1

    .line 1046
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1047
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_1

    .line 1049
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I

    move-result v5

    .line 1050
    .local v5, "extCallCnt":I
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 1051
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    if-le v5, v7, :cond_5

    .line 1053
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 1031
    .end local v3    # "validPdCallCount":I
    .end local v4    # "pdSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v5    # "extCallCnt":I
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1059
    .end local v2    # "type":I
    :cond_6
    return-void
.end method

.method onImsCallEventWithHeldBoth(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .locals 8
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p2, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1062
    if-eqz p2, :cond_3

    .line 1063
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 1065
    .local v0, "phoneId":I
    const/4 v1, 0x0

    .line 1066
    .local v1, "cmcRegi":Lcom/sec/ims/ImsRegistration;
    const/4 v2, 0x5

    .line 1067
    .local v2, "cmcType":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1068
    const/4 v2, 0x7

    .line 1070
    :cond_0
    const/4 v3, 0x1

    .local v3, "type":I
    :goto_0
    if-gt v3, v2, :cond_3

    .line 1071
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1072
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    if-nez v4, :cond_2

    .line 1073
    const/4 v4, 0x0

    .line 1074
    .local v4, "validPdCallCount":I
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1075
    .local v5, "pdSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v5, :cond_1

    .line 1076
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v6, v7, :cond_1

    .line 1077
    add-int/lit8 v4, v4, 0x1

    .line 1080
    :cond_1
    if-nez v4, :cond_2

    .line 1081
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 1070
    .end local v4    # "validPdCallCount":I
    .end local v5    # "pdSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1086
    .end local v0    # "phoneId":I
    .end local v1    # "cmcRegi":Lcom/sec/ims/ImsRegistration;
    .end local v2    # "cmcType":I
    .end local v3    # "type":I
    :cond_3
    return-void
.end method

.method onImsIncomingCallEventWithSendPublish(II)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "cmcType"    # I

    .line 996
    const/4 v0, 0x0

    .line 997
    .local v0, "cmcRegi":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x5

    .line 998
    .local v1, "p2pType":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    const/4 v1, 0x7

    .line 1001
    :cond_0
    const/4 v2, 0x1

    .local v2, "type":I
    :goto_0
    if-gt v2, v1, :cond_4

    .line 1002
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1003
    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 1004
    const/4 v3, 0x0

    .line 1005
    .local v3, "validPdCallCount":I
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v4

    .line 1006
    .local v4, "pdActiveSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1007
    .local v5, "pdHeldSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 1008
    :cond_1
    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 1010
    :cond_2
    if-nez v3, :cond_3

    .line 1011
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 1001
    .end local v3    # "validPdCallCount":I
    .end local v4    # "pdActiveSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v5    # "pdHeldSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1015
    .end local v2    # "type":I
    :cond_4
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 8
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 132
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 133
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    .line 134
    .local v1, "cmcType":I
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveCmcCallsession(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Send Publish for CS call after CMC PD registration."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    goto/16 :goto_1

    .line 142
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveCmcCallsession(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_1

    .line 145
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDummyPublishDialog because do not have active VoLTE Call."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    goto/16 :goto_1

    .line 150
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "exist Active PD callsession. do not send PUBLISH msg."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 153
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v2, :cond_6

    .line 155
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "do cmc handover"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v2

    .line 157
    .local v2, "am":Lcom/sec/internal/helper/PreciseAlarmManager;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 158
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 159
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    .line 160
    .local v3, "previousSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v3, :cond_4

    .line 161
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    .line 162
    .local v4, "previousProfile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->makeReplaceProfile(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    .line 164
    .local v5, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v6, v5, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    .line 165
    .local v6, "newSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 166
    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->replaceRegistrationInfo(Lcom/sec/ims/ImsRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v6    # "newSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    goto :goto_0

    .line 167
    :catch_0
    move-exception v6

    .line 168
    .local v6, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v7, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->clearAllCallInternal(I)V

    .line 169
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    .end local v2    # "am":Lcom/sec/internal/helper/PreciseAlarmManager;
    .end local v3    # "previousSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v4    # "previousProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v5    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    goto :goto_1

    .line 174
    :cond_5
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mmtel Registered ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mmtel"

    invoke-virtual {p1, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p1, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_6
    :goto_1
    return-void
.end method

.method sendCmcCallStateForRcs(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "isCmcConnected"    # Z

    .line 1132
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1133
    .local v2, "cmcRegi":Lcom/sec/ims/ImsRegistration;
    if-eqz v2, :cond_1

    .line 1134
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "sendCmcCallStateForRcs"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "EXTRA_IS_INCOMING"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1137
    const-string v0, "EXTRA_TEL_NUMBER"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    const-string v0, "EXTRA_PHONE_ID"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1139
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v4, "EXTRA_CALL_EVENT"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1140
    const-string v0, "EXTRA_IS_CMC_CALL"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1141
    const-string v0, "EXTRA_IS_CMC_CONNECTED"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1144
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public sendDummyPublishDialog(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "cmcType"    # I

    .line 198
    new-instance v0, Lcom/android/internal/telephony/PublishDialog;

    invoke-direct {v0}, Lcom/android/internal/telephony/PublishDialog;-><init>()V

    .line 199
    .local v0, "tmpDialog":Lcom/android/internal/telephony/PublishDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->setCallCount(I)V

    .line 200
    const/16 v2, 0x270f

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallId(I)V

    .line 201
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallDomain(I)V

    .line 202
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallStatus(I)V

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    .line 204
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallDirection(I)V

    .line 205
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->addCallPullable(Z)V

    .line 207
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallNumberPresentation(I)V

    .line 208
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapNamePresentation(I)V

    .line 209
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallMpty(Z)V

    .line 211
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PublishDialog;->addConnectedTime(J)V

    .line 212
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    .line 213
    return-void
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V
    .locals 68
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .param p3, "cmcType"    # I

    .line 347
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v3

    .line 348
    .local v3, "callCnt":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallId()[I

    move-result-object v4

    .line 349
    .local v4, "callIds":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallDomain()[I

    move-result-object v5

    .line 350
    .local v5, "domains":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v6

    .line 351
    .local v6, "callStates":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallType()[I

    move-result-object v7

    .line 352
    .local v7, "callTypes":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallDirection()[I

    move-result-object v8

    .line 353
    .local v8, "callDirections":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallRemoteUri()[Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, "remoteUris":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallPullable()[Z

    move-result-object v10

    .line 355
    .local v10, "pullable":[Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallNumberPresentation()[I

    move-result-object v11

    .line 356
    .local v11, "numberPresentations":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getConnectedTime()[J

    move-result-object v12

    .line 357
    .local v12, "callEstablishTime":[J
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallMpty()[Z

    move-result-object v13

    .line 359
    .local v13, "isConferences":[Z
    sget-object v14, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    .end local v9    # "remoteUris":[Ljava/lang/String;
    .local v16, "remoteUris":[Ljava/lang/String;
    const-string/jumbo v9, "sendPublishDialog() callCnt: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v9, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    const-string v14, ""

    .line 363
    .local v14, "publicId":Ljava/lang/String;
    const/4 v15, -0x1

    .line 364
    .local v15, "regId":I
    const-string v17, ""

    .line 366
    .local v17, "origUri":Ljava/lang/String;
    if-eqz v4, :cond_30

    move-object/from16 v18, v14

    .end local v14    # "publicId":Ljava/lang/String;
    .local v18, "publicId":Ljava/lang/String;
    array-length v14, v4

    move/from16 v19, v15

    .end local v15    # "regId":I
    .local v19, "regId":I
    const/4 v15, 0x1

    if-lt v14, v15, :cond_2f

    if-eqz v5, :cond_2f

    array-length v14, v5

    if-ge v14, v15, :cond_0

    move-object/from16 v20, v5

    move-object/from16 v67, v6

    move-object/from16 v22, v7

    move-object/from16 v21, v9

    move-object/from16 v55, v10

    move-object/from16 v26, v11

    move-object/from16 v23, v12

    move-object/from16 v25, v13

    move v13, v2

    goto/16 :goto_1b

    .line 371
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v20, v9

    .end local v9    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .local v20, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    aget v9, v5, v14

    if-ne v9, v15, :cond_4

    .line 372
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Save publishDialog for CS call, callCnt : "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const/4 v9, 0x0

    .line 376
    .local v9, "extConfirmedCsCallCnt":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v3, :cond_2

    .line 377
    aget v23, v6, v14

    invoke-static/range {v23 .. v23}, Lcom/sec/internal/helper/ImsCallUtil;->convertCsCallStateToDialogState(I)I

    move-result v15

    move-object/from16 v23, v12

    const/4 v12, 0x2

    .end local v12    # "callEstablishTime":[J
    .local v23, "callEstablishTime":[J
    if-ne v15, v12, :cond_1

    .line 378
    add-int/lit8 v9, v9, 0x1

    .line 376
    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v15, p2

    move-object/from16 v12, v23

    goto :goto_0

    .end local v23    # "callEstablishTime":[J
    .restart local v12    # "callEstablishTime":[J
    :cond_2
    move-object/from16 v23, v12

    .line 381
    .end local v12    # "callEstablishTime":[J
    .end local v14    # "i":I
    .restart local v23    # "callEstablishTime":[J
    sget-object v12, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mExtConfirmedCsCallCnt: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", extConfirmedCsCallCnt: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget v12, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    if-eq v12, v9, :cond_3

    .line 383
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {v12, v1, v9}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->updateCmcExtCallCount(II)I

    .line 385
    :cond_3
    iput v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    goto :goto_1

    .line 371
    .end local v9    # "extConfirmedCsCallCnt":I
    .end local v23    # "callEstablishTime":[J
    .restart local v12    # "callEstablishTime":[J
    :cond_4
    move-object/from16 v23, v12

    .line 389
    .end local v12    # "callEstablishTime":[J
    .restart local v23    # "callEstablishTime":[J
    :goto_1
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cmcType: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v12

    .line 391
    .local v12, "cmcRegi":Lcom/sec/ims/ImsRegistration;
    if-nez v12, :cond_6

    .line 392
    const/4 v9, 0x1

    if-ne v2, v9, :cond_5

    .line 393
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v14, "Ignore sendPublishDialog : CMC PD is not registered"

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 395
    :cond_5
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignore sendPublishDialog : P2P PD is not registered: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_2
    return-void

    .line 400
    :cond_6
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    const-string v14, ","

    if-ge v9, v3, :cond_7

    .line 401
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v4, v9

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v9

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v6, v9

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v7, v9

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v8, v9

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v1, v10, v9

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v11, v9

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v1, v13, v9

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v14, 0x70000001

    invoke-static {v14, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 400
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    goto :goto_3

    .line 405
    .end local v9    # "i":I
    :cond_7
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    const-string v9, ", callState: "

    const-string v15, "] callId: "

    move-object/from16 v24, v14

    const-string v14, "[CallInfo #"

    if-ge v1, v3, :cond_9

    .line 407
    move-object/from16 v25, v13

    .end local v13    # "isConferences":[Z
    .local v25, "isConferences":[Z
    sget-object v13, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v26, v11

    .end local v11    # "numberPresentations":[I
    .local v26, "numberPresentations":[I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v4, v1

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v6, v1

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", callEstablishTime: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v14, v23, v1

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz v23, :cond_8

    aget v9, v6, v1

    const/4 v11, 0x1

    if-ne v9, v11, :cond_8

    .line 410
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    aget v11, v4, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aget-wide v13, v23, v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v9, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, v24

    move-object/from16 v13, v25

    move-object/from16 v11, v26

    goto :goto_4

    .end local v25    # "isConferences":[Z
    .end local v26    # "numberPresentations":[I
    .restart local v11    # "numberPresentations":[I
    .restart local v13    # "isConferences":[Z
    :cond_9
    move-object/from16 v26, v11

    move-object/from16 v25, v13

    .line 414
    .end local v1    # "i":I
    .end local v11    # "numberPresentations":[I
    .end local v13    # "isConferences":[Z
    .restart local v25    # "isConferences":[Z
    .restart local v26    # "numberPresentations":[I
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasInternalCallToIgnorePublishDialog(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 415
    return-void

    .line 418
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isNeedDelayToSendPublishDialog(I)Z

    move-result v1

    .line 420
    .local v1, "needDelay":Z
    invoke-virtual {v12}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v11

    .line 421
    .end local v19    # "regId":I
    .local v11, "regId":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v1

    .end local v1    # "needDelay":Z
    .local v34, "needDelay":Z
    const-string/jumbo v1, "sip:"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v1

    invoke-virtual {v12}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .end local v18    # "publicId":Ljava/lang/String;
    .local v1, "publicId":Ljava/lang/String;
    sget-object v13, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v35, v12

    .end local v12    # "cmcRegi":Lcom/sec/ims/ImsRegistration;
    .local v35, "cmcRegi":Lcom/sec/ims/ImsRegistration;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "regId: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", publicId: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 426
    .local v2, "mCmcPreviousTotalMnoPullable":Z
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 427
    if-eqz v10, :cond_c

    .line 428
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    array-length v13, v10

    if-ge v12, v13, :cond_c

    .line 429
    aget-boolean v13, v10, v12

    if-nez v13, :cond_b

    .line 430
    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 431
    goto :goto_6

    .line 428
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 436
    .end local v12    # "i":I
    :cond_c
    :goto_6
    const/4 v12, 0x0

    .line 437
    .local v12, "hasCsConference":Z
    const/4 v13, 0x1

    .line 438
    .local v13, "conferenceCallState":I
    const/16 v18, 0x0

    .line 439
    .local v18, "extCsCallCount":I
    const/16 v27, 0x0

    .line 441
    .local v27, "endedCallCnt":I
    const/16 v28, 0x0

    move-object/from16 v55, v10

    move/from16 v10, v28

    .local v10, "i":I
    .local v55, "pullable":[Z
    :goto_7
    move/from16 v56, v11

    .end local v11    # "regId":I
    .local v56, "regId":I
    const-string v11, ";gr="

    if-ge v10, v3, :cond_23

    .line 442
    const-string/jumbo v29, "primary_device_dialog_id"

    .line 443
    .local v29, "dialogId":Ljava/lang/String;
    const-string v30, ""

    .line 444
    .local v30, "sipCallId":Ljava/lang/String;
    const-string v31, ""

    .line 445
    .local v31, "deviceId":Ljava/lang/String;
    const-string v32, ""

    .line 446
    .local v32, "localUri":Ljava/lang/String;
    const-string v33, ""

    .line 447
    .local v33, "remoteUri":Ljava/lang/String;
    const-string/jumbo v57, "test_local_tag"

    .line 448
    .local v57, "sipLocalTag":Ljava/lang/String;
    const-string/jumbo v58, "test_remote_tag"

    .line 449
    .local v58, "sipRemoteTag":Ljava/lang/String;
    const-string v36, ""

    .line 451
    .local v36, "sessionDesc":Ljava/lang/String;
    const/16 v37, 0x0

    .line 452
    .local v37, "dialogState":I
    const/16 v38, 0x0

    .line 453
    .local v38, "direction":I
    const/16 v39, 0x0

    .line 454
    .local v39, "callType":I
    const/16 v40, 0x0

    .line 456
    .local v40, "callState":I
    const/16 v41, 0x1

    .line 457
    .local v41, "isEachCallPullable":Z
    const/16 v42, 0x0

    .line 458
    .local v42, "isExclusive":Z
    const/16 v43, 0x0

    .line 459
    .local v43, "audioDir":I
    const/16 v44, 0x0

    .line 461
    .local v44, "videoDir":I
    move-object/from16 v59, v1

    .end local v1    # "publicId":Ljava/lang/String;
    .local v59, "publicId":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    move/from16 v60, v13

    .end local v13    # "conferenceCallState":I
    .local v60, "conferenceCallState":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v61, v14

    aget v14, v4, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", domain: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v5, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v6, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", callType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v7, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", callDirections: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v8, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", remoteUris"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v16, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    aget v1, v5, v10

    const/4 v13, 0x2

    if-ne v1, v13, :cond_e

    .line 466
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-eq v2, v1, :cond_d

    .line 467
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v9, v14

    iget-boolean v13, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v9, v14

    const-string v13, "Trying call sendPublishDialogInternal(). CmcTotalMnoPullable changed : %s ==> %s"

    invoke-static {v13, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    move/from16 v1, p1

    move/from16 v13, p3

    invoke-virtual {v0, v1, v13}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(II)V

    .line 469
    move-object/from16 v67, v6

    move-object/from16 v14, v19

    move-object/from16 v1, v20

    move/from16 v19, v2

    goto/16 :goto_14

    .line 466
    :cond_d
    move/from16 v1, p1

    move/from16 v13, p3

    move-object/from16 v14, v19

    move/from16 v19, v2

    goto/16 :goto_9

    .line 474
    :cond_e
    move/from16 v1, p1

    move/from16 v13, p3

    aget v14, v5, v10

    const/4 v1, 0x2

    if-eq v14, v1, :cond_22

    .line 475
    aget v1, v4, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    .line 476
    move-object/from16 v29, v30

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v19

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v2

    .end local v2    # "mCmcPreviousTotalMnoPullable":Z
    .local v19, "mCmcPreviousTotalMnoPullable":Z
    invoke-virtual/range {v35 .. v35}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v16, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 482
    aget v1, v26, v10

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 483
    const-string v1, "anonymous"

    move-object/from16 v36, v1

    .end local v36    # "sessionDesc":Ljava/lang/String;
    .local v1, "sessionDesc":Ljava/lang/String;
    goto :goto_8

    .line 485
    .end local v1    # "sessionDesc":Ljava/lang/String;
    .restart local v36    # "sessionDesc":Ljava/lang/String;
    :cond_f
    aget-object v1, v16, v10

    move-object/from16 v36, v1

    .line 488
    :goto_8
    aget v1, v7, v10

    .line 489
    .end local v39    # "callType":I
    .local v1, "callType":I
    aget v38, v8, v10

    .line 490
    aget v2, v6, v10

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->convertCsCallStateToDialogState(I)I

    move-result v37

    .line 492
    const/16 v2, 0x38f

    if-ne v1, v2, :cond_10

    .line 493
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v11, "ignore publish dialog when call type is 911 (Emergency)"

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    nop

    .line 441
    .end local v1    # "callType":I
    .end local v19    # "mCmcPreviousTotalMnoPullable":Z
    .end local v29    # "dialogId":Ljava/lang/String;
    .end local v30    # "sipCallId":Ljava/lang/String;
    .end local v31    # "deviceId":Ljava/lang/String;
    .end local v32    # "localUri":Ljava/lang/String;
    .end local v33    # "remoteUri":Ljava/lang/String;
    .end local v36    # "sessionDesc":Ljava/lang/String;
    .end local v37    # "dialogState":I
    .end local v38    # "direction":I
    .end local v40    # "callState":I
    .end local v41    # "isEachCallPullable":Z
    .end local v42    # "isExclusive":Z
    .end local v43    # "audioDir":I
    .end local v44    # "videoDir":I
    .end local v57    # "sipLocalTag":Ljava/lang/String;
    .end local v58    # "sipRemoteTag":Ljava/lang/String;
    .restart local v2    # "mCmcPreviousTotalMnoPullable":Z
    :goto_9
    move-object/from16 v67, v6

    move-object/from16 v1, v20

    .end local v2    # "mCmcPreviousTotalMnoPullable":Z
    .restart local v19    # "mCmcPreviousTotalMnoPullable":Z
    goto/16 :goto_13

    .line 495
    .restart local v1    # "callType":I
    .restart local v29    # "dialogId":Ljava/lang/String;
    .restart local v30    # "sipCallId":Ljava/lang/String;
    .restart local v31    # "deviceId":Ljava/lang/String;
    .restart local v32    # "localUri":Ljava/lang/String;
    .restart local v33    # "remoteUri":Ljava/lang/String;
    .restart local v36    # "sessionDesc":Ljava/lang/String;
    .restart local v37    # "dialogState":I
    .restart local v38    # "direction":I
    .restart local v40    # "callState":I
    .restart local v41    # "isEachCallPullable":Z
    .restart local v42    # "isExclusive":Z
    .restart local v43    # "audioDir":I
    .restart local v44    # "videoDir":I
    .restart local v57    # "sipLocalTag":Ljava/lang/String;
    .restart local v58    # "sipRemoteTag":Ljava/lang/String;
    :cond_10
    aget-boolean v11, v25, v10

    const/4 v2, 0x1

    if-ne v11, v2, :cond_14

    .line 496
    const/4 v2, 0x1

    .line 497
    .end local v12    # "hasCsConference":Z
    .local v2, "hasCsConference":Z
    aget v11, v6, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_11

    .line 498
    const/4 v11, 0x2

    move v12, v2

    move-object/from16 v67, v6

    move/from16 v60, v11

    move-object/from16 v1, v20

    .end local v60    # "conferenceCallState":I
    .local v11, "conferenceCallState":I
    goto/16 :goto_13

    .line 499
    .end local v11    # "conferenceCallState":I
    .restart local v60    # "conferenceCallState":I
    :cond_11
    aget v11, v6, v10

    if-eqz v11, :cond_13

    aget v11, v6, v10

    const/4 v12, 0x7

    if-eq v11, v12, :cond_13

    aget v11, v6, v10

    const/16 v12, 0x8

    if-ne v11, v12, :cond_12

    goto :goto_a

    :cond_12
    move v12, v2

    move-object/from16 v67, v6

    move-object/from16 v1, v20

    goto/16 :goto_13

    .line 502
    :cond_13
    :goto_a
    const/4 v11, 0x0

    move v12, v2

    move-object/from16 v67, v6

    move/from16 v60, v11

    move-object/from16 v1, v20

    .end local v60    # "conferenceCallState":I
    .restart local v11    # "conferenceCallState":I
    goto/16 :goto_13

    .line 507
    .end local v2    # "hasCsConference":Z
    .end local v11    # "conferenceCallState":I
    .restart local v12    # "hasCsConference":Z
    .restart local v60    # "conferenceCallState":I
    :cond_14
    if-eqz v1, :cond_19

    const/16 v2, 0x38f

    if-ne v1, v2, :cond_15

    goto :goto_c

    .line 514
    :cond_15
    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    const/4 v2, 0x2

    if-eq v1, v2, :cond_17

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    goto :goto_b

    :cond_16
    const/4 v11, 0x1

    goto :goto_e

    .line 515
    :cond_17
    :goto_b
    const/16 v41, 0x0

    .line 516
    aget v2, v6, v10

    const/4 v11, 0x1

    if-ne v2, v11, :cond_18

    .line 517
    const/4 v2, 0x3

    .line 518
    .end local v43    # "audioDir":I
    .local v2, "audioDir":I
    const/4 v11, 0x3

    move/from16 v43, v2

    move/from16 v44, v11

    const/4 v11, 0x1

    .end local v44    # "videoDir":I
    .local v11, "videoDir":I
    goto :goto_e

    .line 520
    .end local v2    # "audioDir":I
    .end local v11    # "videoDir":I
    .restart local v43    # "audioDir":I
    .restart local v44    # "videoDir":I
    :cond_18
    const/4 v2, 0x0

    .line 521
    .end local v43    # "audioDir":I
    .restart local v2    # "audioDir":I
    const/4 v11, 0x0

    move/from16 v43, v2

    move/from16 v44, v11

    const/4 v11, 0x1

    .end local v44    # "videoDir":I
    .restart local v11    # "videoDir":I
    goto :goto_e

    .line 508
    .end local v2    # "audioDir":I
    .end local v11    # "videoDir":I
    .restart local v43    # "audioDir":I
    .restart local v44    # "videoDir":I
    :cond_19
    :goto_c
    const/16 v2, 0x38f

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_d

    :cond_1a
    const/4 v2, 0x0

    :goto_d
    move/from16 v41, v2

    .line 509
    aget v2, v6, v10

    const/4 v11, 0x1

    if-ne v2, v11, :cond_1b

    .line 510
    const/4 v2, 0x3

    move/from16 v43, v2

    .end local v43    # "audioDir":I
    .restart local v2    # "audioDir":I
    goto :goto_e

    .line 512
    .end local v2    # "audioDir":I
    .restart local v43    # "audioDir":I
    :cond_1b
    const/4 v2, 0x0

    move/from16 v43, v2

    .line 526
    :goto_e
    aget v2, v6, v10

    if-ne v2, v11, :cond_1c

    .line 527
    const/4 v2, 0x1

    move/from16 v40, v2

    .end local v40    # "callState":I
    .local v2, "callState":I
    goto :goto_f

    .line 528
    .end local v2    # "callState":I
    .restart local v40    # "callState":I
    :cond_1c
    aget v2, v6, v10

    const/4 v11, 0x2

    if-ne v2, v11, :cond_1d

    .line 529
    const/4 v2, 0x2

    .line 530
    .end local v40    # "callState":I
    .restart local v2    # "callState":I
    const/4 v11, 0x0

    move/from16 v40, v2

    move/from16 v41, v11

    .end local v41    # "isEachCallPullable":Z
    .local v11, "isEachCallPullable":Z
    goto :goto_f

    .line 532
    .end local v2    # "callState":I
    .end local v11    # "isEachCallPullable":Z
    .restart local v40    # "callState":I
    .restart local v41    # "isEachCallPullable":Z
    :cond_1d
    const/4 v2, 0x0

    move/from16 v41, v2

    .line 535
    :goto_f
    if-eqz v41, :cond_1f

    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-nez v2, :cond_1e

    goto :goto_10

    :cond_1e
    const/4 v2, 0x0

    goto :goto_11

    :cond_1f
    :goto_10
    const/4 v2, 0x1

    :goto_11
    move/from16 v42, v2

    .line 537
    aget v2, v6, v10

    if-eqz v2, :cond_20

    aget v2, v6, v10

    const/4 v11, 0x7

    if-eq v2, v11, :cond_20

    aget v2, v6, v10

    const/16 v11, 0x8

    if-ne v2, v11, :cond_21

    .line 540
    :cond_20
    add-int/lit8 v27, v27, 0x1

    .line 542
    :cond_21
    add-int/lit8 v18, v18, 0x1

    move/from16 v28, v1

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v11, v38

    move/from16 v62, v40

    move/from16 v63, v41

    move/from16 v64, v42

    move/from16 v65, v43

    move/from16 v66, v44

    goto :goto_12

    .line 474
    .end local v1    # "callType":I
    .end local v19    # "mCmcPreviousTotalMnoPullable":Z
    .local v2, "mCmcPreviousTotalMnoPullable":Z
    .restart local v39    # "callType":I
    :cond_22
    move-object/from16 v14, v19

    move/from16 v19, v2

    .end local v2    # "mCmcPreviousTotalMnoPullable":Z
    .restart local v19    # "mCmcPreviousTotalMnoPullable":Z
    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v11, v38

    move/from16 v28, v39

    move/from16 v62, v40

    move/from16 v63, v41

    move/from16 v64, v42

    move/from16 v65, v43

    move/from16 v66, v44

    .line 545
    .end local v36    # "sessionDesc":Ljava/lang/String;
    .end local v37    # "dialogState":I
    .end local v38    # "direction":I
    .end local v39    # "callType":I
    .end local v40    # "callState":I
    .end local v41    # "isEachCallPullable":Z
    .end local v42    # "isExclusive":Z
    .end local v43    # "audioDir":I
    .end local v44    # "videoDir":I
    .local v1, "sessionDesc":Ljava/lang/String;
    .local v2, "dialogState":I
    .local v11, "direction":I
    .local v28, "callType":I
    .local v62, "callState":I
    .local v63, "isEachCallPullable":Z
    .local v64, "isExclusive":Z
    .local v65, "audioDir":I
    .local v66, "videoDir":I
    :goto_12
    new-instance v67, Lcom/sec/ims/Dialog;

    move-object/from16 v36, v67

    const/16 v54, 0x0

    const-string v44, ""

    const-string v45, ""

    move-object/from16 v37, v29

    move-object/from16 v38, v31

    move-object/from16 v39, v30

    move-object/from16 v40, v57

    move-object/from16 v41, v58

    move-object/from16 v42, v32

    move-object/from16 v43, v33

    move-object/from16 v46, v1

    move/from16 v47, v2

    move/from16 v48, v11

    move/from16 v49, v28

    move/from16 v50, v62

    move/from16 v51, v65

    move/from16 v52, v66

    move/from16 v53, v64

    invoke-direct/range {v36 .. v54}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    .line 548
    .local v36, "dlg":Lcom/sec/ims/Dialog;
    move-object/from16 v37, v1

    .end local v1    # "sessionDesc":Ljava/lang/String;
    .local v37, "sessionDesc":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    move/from16 v38, v2

    .end local v2    # "dialogState":I
    .local v38, "dialogState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v67, v6

    .end local v6    # "callStates":[I
    .local v67, "callStates":[I
    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v36 .. v36}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move-object/from16 v1, v20

    move-object/from16 v2, v36

    .end local v20    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .end local v36    # "dlg":Lcom/sec/ims/Dialog;
    .local v1, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .local v2, "dlg":Lcom/sec/ims/Dialog;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v2    # "dlg":Lcom/sec/ims/Dialog;
    .end local v11    # "direction":I
    .end local v28    # "callType":I
    .end local v29    # "dialogId":Ljava/lang/String;
    .end local v30    # "sipCallId":Ljava/lang/String;
    .end local v31    # "deviceId":Ljava/lang/String;
    .end local v32    # "localUri":Ljava/lang/String;
    .end local v33    # "remoteUri":Ljava/lang/String;
    .end local v37    # "sessionDesc":Ljava/lang/String;
    .end local v38    # "dialogState":I
    .end local v57    # "sipLocalTag":Ljava/lang/String;
    .end local v58    # "sipRemoteTag":Ljava/lang/String;
    .end local v62    # "callState":I
    .end local v63    # "isEachCallPullable":Z
    .end local v64    # "isExclusive":Z
    .end local v65    # "audioDir":I
    .end local v66    # "videoDir":I
    :goto_13
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v20, v1

    move/from16 v2, v19

    move/from16 v11, v56

    move-object/from16 v1, v59

    move/from16 v13, v60

    move-object/from16 v6, v67

    move-object/from16 v19, v14

    move-object/from16 v14, v61

    goto/16 :goto_7

    .end local v19    # "mCmcPreviousTotalMnoPullable":Z
    .end local v59    # "publicId":Ljava/lang/String;
    .end local v60    # "conferenceCallState":I
    .end local v67    # "callStates":[I
    .local v1, "publicId":Ljava/lang/String;
    .local v2, "mCmcPreviousTotalMnoPullable":Z
    .restart local v6    # "callStates":[I
    .restart local v13    # "conferenceCallState":I
    .restart local v20    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    :cond_23
    move-object/from16 v59, v1

    move-object/from16 v67, v6

    move/from16 v60, v13

    move-object/from16 v14, v19

    move-object/from16 v1, v20

    move/from16 v13, p3

    move/from16 v19, v2

    .line 552
    .end local v2    # "mCmcPreviousTotalMnoPullable":Z
    .end local v6    # "callStates":[I
    .end local v10    # "i":I
    .end local v13    # "conferenceCallState":I
    .end local v20    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .local v1, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .restart local v19    # "mCmcPreviousTotalMnoPullable":Z
    .restart local v59    # "publicId":Ljava/lang/String;
    .restart local v60    # "conferenceCallState":I
    .restart local v67    # "callStates":[I
    :goto_14
    const/4 v2, 0x0

    aget v6, v5, v2

    const/4 v2, 0x2

    if-eq v6, v2, :cond_27

    if-lt v3, v2, :cond_27

    if-eqz v12, :cond_27

    .line 553
    const-string/jumbo v2, "test_local_tag"

    .line 554
    .local v2, "sipLocalTag":Ljava/lang/String;
    const-string/jumbo v6, "test_remote_tag"

    .line 555
    .local v6, "sipRemoteTag":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 556
    .local v9, "deviceId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 557
    .local v10, "audioDir":I
    const/4 v11, 0x0

    .line 558
    .local v11, "videoDir":I
    move-object/from16 v20, v5

    const/4 v15, 0x0

    .end local v5    # "domains":[I
    .local v20, "domains":[I
    aget v5, v7, v15

    const/4 v15, 0x1

    if-eq v5, v15, :cond_25

    const/4 v5, 0x0

    aget v15, v7, v5

    const/4 v5, 0x2

    if-eq v15, v5, :cond_25

    const/4 v5, 0x0

    aget v15, v7, v5

    const/4 v5, 0x3

    if-ne v15, v5, :cond_24

    goto :goto_15

    .line 562
    :cond_24
    const/4 v5, 0x3

    .end local v10    # "audioDir":I
    .local v5, "audioDir":I
    goto :goto_16

    .line 559
    .end local v5    # "audioDir":I
    .restart local v10    # "audioDir":I
    :cond_25
    :goto_15
    const/4 v5, 0x3

    .line 560
    .end local v10    # "audioDir":I
    .restart local v5    # "audioDir":I
    const/4 v11, 0x3

    .line 565
    :goto_16
    if-nez v60, :cond_26

    .line 566
    add-int/lit8 v27, v27, 0x1

    .line 568
    :cond_26
    add-int/lit8 v18, v18, 0x1

    .line 570
    new-instance v10, Lcom/sec/ims/Dialog;

    move-object/from16 v36, v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual/range {v35 .. v35}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    const/16 v47, 0x2

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v53, 0x1

    const/16 v54, 0x0

    const-string v37, "999"

    const-string v39, "999"

    const-string v43, "Conference call"

    const-string v44, ""

    const-string v45, ""

    const-string v46, "Conference call"

    move-object/from16 v38, v9

    move-object/from16 v40, v2

    move-object/from16 v41, v6

    move/from16 v50, v60

    move/from16 v51, v5

    move/from16 v52, v11

    invoke-direct/range {v36 .. v54}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    .line 574
    .local v10, "dlg":Lcom/sec/ims/Dialog;
    sget-object v14, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    .end local v2    # "sipLocalTag":Ljava/lang/String;
    .local v22, "sipLocalTag":Ljava/lang/String;
    const-string v2, "conference: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v18

    move/from16 v5, v27

    goto :goto_17

    .line 552
    .end local v6    # "sipRemoteTag":Ljava/lang/String;
    .end local v9    # "deviceId":Ljava/lang/String;
    .end local v10    # "dlg":Lcom/sec/ims/Dialog;
    .end local v11    # "videoDir":I
    .end local v20    # "domains":[I
    .end local v22    # "sipLocalTag":Ljava/lang/String;
    .local v5, "domains":[I
    :cond_27
    move-object/from16 v20, v5

    .line 578
    .end local v5    # "domains":[I
    .restart local v20    # "domains":[I
    move/from16 v2, v18

    move/from16 v5, v27

    .end local v18    # "extCsCallCount":I
    .end local v27    # "endedCallCnt":I
    .local v2, "extCsCallCount":I
    .local v5, "endedCallCnt":I
    :goto_17
    move-object/from16 v29, v59

    .line 581
    .end local v17    # "origUri":Ljava/lang/String;
    .local v29, "origUri":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v59

    .end local v59    # "publicId":Ljava/lang/String;
    .local v9, "publicId":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\">\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 584
    .local v6, "xml":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_29

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/ims/Dialog;

    .line 585
    .local v11, "dialog":Lcom/sec/ims/Dialog;
    sub-int v14, v2, v5

    const/4 v15, 0x1

    if-le v14, v15, :cond_28

    .line 586
    invoke-virtual {v11, v15}, Lcom/sec/ims/Dialog;->setIsExclusive(Z)V

    .line 588
    :cond_28
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 589
    .end local v11    # "dialog":Lcom/sec/ims/Dialog;
    goto :goto_18

    .line 590
    :cond_29
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "</dialog-info>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 593
    const/4 v10, 0x0

    .line 594
    .local v10, "cmcPdCallCnt":I
    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v0, v13, v11}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v11

    .line 595
    .local v11, "pdActiveSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v11, :cond_2a

    .line 596
    add-int/lit8 v10, v10, 0x1

    .line 598
    :cond_2a
    sget-object v14, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    .end local v7    # "callTypes":[I
    .local v22, "callTypes":[I
    const-string v7, "cmcPdCallCnt: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", extCsCallCount: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", endedCallCnt: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v7, 0x0

    .line 601
    .local v7, "isDummyDialog":Z
    const/4 v14, 0x1

    if-ne v3, v14, :cond_2b

    const/4 v14, 0x0

    aget v14, v4, v14

    const/16 v15, 0x270f

    if-ne v14, v15, :cond_2b

    .line 602
    sget-object v14, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v15, "This is dummy Publish dialog"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v7, 0x1

    .line 606
    :cond_2b
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isDuplicatedPublishDialog(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2c

    if-nez v7, :cond_2c

    .line 607
    return-void

    .line 610
    :cond_2c
    if-nez v10, :cond_2e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2e

    .line 611
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v32, 0x1770

    const-string v30, "displayName"

    move-object/from16 v27, v14

    move/from16 v28, v56

    move-object/from16 v31, v6

    move/from16 v33, v34

    invoke-interface/range {v27 .. v33}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 612
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_19
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/ims/Dialog;

    .line 613
    .local v15, "dialog":Lcom/sec/ims/Dialog;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v1

    .end local v1    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .local v21, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    invoke-virtual {v15}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v2

    .end local v2    # "extCsCallCount":I
    .restart local v18    # "extCsCallCount":I
    invoke-virtual {v15}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x70000002

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 614
    .end local v15    # "dialog":Lcom/sec/ims/Dialog;
    move-object/from16 v0, p0

    move/from16 v2, v18

    move-object/from16 v1, v21

    goto :goto_19

    .line 612
    .end local v18    # "extCsCallCount":I
    .end local v21    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .restart local v1    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .restart local v2    # "extCsCallCount":I
    :cond_2d
    move-object/from16 v21, v1

    move/from16 v18, v2

    .end local v1    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .end local v2    # "extCsCallCount":I
    .restart local v18    # "extCsCallCount":I
    .restart local v21    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    goto :goto_1a

    .line 610
    .end local v18    # "extCsCallCount":I
    .end local v21    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .restart local v1    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .restart local v2    # "extCsCallCount":I
    :cond_2e
    move-object/from16 v21, v1

    move/from16 v18, v2

    .line 616
    .end local v1    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .end local v2    # "extCsCallCount":I
    .restart local v18    # "extCsCallCount":I
    .restart local v21    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    :goto_1a
    return-void

    .line 366
    .end local v20    # "domains":[I
    .end local v21    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .end local v22    # "callTypes":[I
    .end local v23    # "callEstablishTime":[J
    .end local v25    # "isConferences":[Z
    .end local v26    # "numberPresentations":[I
    .end local v29    # "origUri":Ljava/lang/String;
    .end local v34    # "needDelay":Z
    .end local v35    # "cmcRegi":Lcom/sec/ims/ImsRegistration;
    .end local v55    # "pullable":[Z
    .end local v56    # "regId":I
    .end local v60    # "conferenceCallState":I
    .end local v67    # "callStates":[I
    .local v5, "domains":[I
    .local v6, "callStates":[I
    .local v7, "callTypes":[I
    .local v9, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .local v10, "pullable":[Z
    .local v11, "numberPresentations":[I
    .local v12, "callEstablishTime":[J
    .local v13, "isConferences":[Z
    .restart local v17    # "origUri":Ljava/lang/String;
    .local v18, "publicId":Ljava/lang/String;
    .local v19, "regId":I
    :cond_2f
    move-object/from16 v20, v5

    move-object/from16 v67, v6

    move-object/from16 v22, v7

    move-object/from16 v21, v9

    move-object/from16 v55, v10

    move-object/from16 v26, v11

    move-object/from16 v23, v12

    move-object/from16 v25, v13

    move v13, v2

    .end local v5    # "domains":[I
    .end local v6    # "callStates":[I
    .end local v7    # "callTypes":[I
    .end local v9    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .end local v10    # "pullable":[Z
    .end local v11    # "numberPresentations":[I
    .end local v12    # "callEstablishTime":[J
    .end local v13    # "isConferences":[Z
    .restart local v20    # "domains":[I
    .restart local v21    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .restart local v22    # "callTypes":[I
    .restart local v23    # "callEstablishTime":[J
    .restart local v25    # "isConferences":[Z
    .restart local v26    # "numberPresentations":[I
    .restart local v55    # "pullable":[Z
    .restart local v67    # "callStates":[I
    goto :goto_1b

    .end local v18    # "publicId":Ljava/lang/String;
    .end local v19    # "regId":I
    .end local v20    # "domains":[I
    .end local v21    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .end local v22    # "callTypes":[I
    .end local v23    # "callEstablishTime":[J
    .end local v25    # "isConferences":[Z
    .end local v26    # "numberPresentations":[I
    .end local v55    # "pullable":[Z
    .end local v67    # "callStates":[I
    .restart local v5    # "domains":[I
    .restart local v6    # "callStates":[I
    .restart local v7    # "callTypes":[I
    .restart local v9    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .restart local v10    # "pullable":[Z
    .restart local v11    # "numberPresentations":[I
    .restart local v12    # "callEstablishTime":[J
    .restart local v13    # "isConferences":[Z
    .local v14, "publicId":Ljava/lang/String;
    .local v15, "regId":I
    :cond_30
    move-object/from16 v20, v5

    move-object/from16 v67, v6

    move-object/from16 v22, v7

    move-object/from16 v21, v9

    move-object/from16 v55, v10

    move-object/from16 v26, v11

    move-object/from16 v23, v12

    move-object/from16 v25, v13

    move-object/from16 v18, v14

    move/from16 v19, v15

    move v13, v2

    .line 367
    .end local v5    # "domains":[I
    .end local v6    # "callStates":[I
    .end local v7    # "callTypes":[I
    .end local v9    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .end local v10    # "pullable":[Z
    .end local v11    # "numberPresentations":[I
    .end local v12    # "callEstablishTime":[J
    .end local v13    # "isConferences":[Z
    .end local v14    # "publicId":Ljava/lang/String;
    .end local v15    # "regId":I
    .restart local v18    # "publicId":Ljava/lang/String;
    .restart local v19    # "regId":I
    .restart local v20    # "domains":[I
    .restart local v21    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    .restart local v22    # "callTypes":[I
    .restart local v23    # "callEstablishTime":[J
    .restart local v25    # "isConferences":[Z
    .restart local v26    # "numberPresentations":[I
    .restart local v55    # "pullable":[Z
    .restart local v67    # "callStates":[I
    :goto_1b
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ignore sendPublishDialog : Array parameters are empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method public sendPublishDialogInternal(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "cmcType"    # I

    .line 621
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 622
    .local v0, "cmcPdRegi":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 625
    :cond_0
    return-void
.end method

.method sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "cmcRegi"    # Lcom/sec/ims/ImsRegistration;

    .line 728
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;Z)V

    .line 729
    return-void
.end method

.method sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;Z)V
    .locals 17
    .param p1, "phoneId"    # I
    .param p2, "cmcRegi"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "needDelay"    # Z

    .line 732
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendPublishDialogInternal()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v2, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    const-string v3, ""

    .line 736
    .local v3, "publicId":Ljava/lang/String;
    const/4 v4, -0x1

    .line 737
    .local v4, "regId":I
    const-string v5, ""

    .line 739
    .local v5, "origUri":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 740
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v7, "CMC PD is not registered"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 743
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    .line 744
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sip:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 745
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "regId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", publicId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    move/from16 v7, p1

    invoke-virtual {v0, v7, v1, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCallCountForSendPublishDialog(ILcom/sec/ims/ImsRegistration;Ljava/util/List;Z)[I

    move-result-object v6

    .line 748
    .local v6, "getCallCount":[I
    const/4 v8, 0x0

    aget v15, v6, v8

    .line 749
    .local v15, "extPsCallCount":I
    const/4 v8, 0x1

    aget v14, v6, v8

    .line 750
    .local v14, "validCallCnt":I
    const/4 v9, 0x2

    aget v13, v6, v9

    .line 752
    .local v13, "endedCallCnt":I
    move-object v10, v3

    .line 754
    .end local v5    # "origUri":Ljava/lang/String;
    .local v10, "origUri":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\">\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 757
    .local v5, "xml":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/ims/Dialog;

    .line 758
    .local v11, "dialog":Lcom/sec/ims/Dialog;
    sub-int v12, v15, v13

    if-le v12, v8, :cond_1

    .line 759
    invoke-virtual {v11, v8}, Lcom/sec/ims/Dialog;->setIsExclusive(Z)V

    .line 761
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 762
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v8, 0x70000003

    invoke-static {v8, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 763
    .end local v11    # "dialog":Lcom/sec/ims/Dialog;
    move-object/from16 v1, p2

    const/4 v8, 0x1

    goto :goto_0

    .line 764
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "</dialog-info>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    .end local v5    # "xml":Ljava/lang/String;
    .local v1, "xml":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extPsCallCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", validCallCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", endedCallCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 769
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v5, 0x1770

    const-string v11, "displayName"

    move v9, v4

    move-object v12, v1

    move/from16 v16, v13

    .end local v13    # "endedCallCnt":I
    .local v16, "endedCallCnt":I
    move v13, v5

    move v5, v14

    .end local v14    # "validCallCnt":I
    .local v5, "validCallCnt":I
    move/from16 v14, p3

    invoke-interface/range {v8 .. v14}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    goto :goto_1

    .line 768
    .end local v5    # "validCallCnt":I
    .end local v16    # "endedCallCnt":I
    .restart local v13    # "endedCallCnt":I
    .restart local v14    # "validCallCnt":I
    :cond_3
    move/from16 v16, v13

    move v5, v14

    .line 772
    .end local v13    # "endedCallCnt":I
    .end local v14    # "validCallCnt":I
    .restart local v5    # "validCallCnt":I
    .restart local v16    # "endedCallCnt":I
    :goto_1
    return-void
.end method

.method public setCallEstablishTimeExtra(J)V
    .locals 3
    .param p1, "callEstablishTimeExtra"    # J

    .line 629
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    return-void
.end method

.method public setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "lineId"    # Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set lineId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .local v0, "nsdServiceInfo":Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->setServiceInfo(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    .line 343
    .end local v0    # "nsdServiceInfo":Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;
    :cond_0
    return-void
.end method

.method startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V
    .locals 5
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1317
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "already start cmc handover timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return-void

    .line 1320
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cmc handover timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 1322
    .local v0, "am":Lcom/sec/internal/helper/PreciseAlarmManager;
    const/16 v1, 0x22

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 1324
    return-void
.end method

.method protected startCmcPdCheckTimer(IJILjava/lang/String;Z)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "millis"    # J
    .param p4, "regId"    # I
    .param p5, "uriStr"    # Ljava/lang/String;
    .param p6, "isFirstCheck"    # Z

    .line 1205
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1207
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCmcPdCheckTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1209
    .local v0, "pdCheckData":Landroid/os/Bundle;
    const-string/jumbo v1, "reg_id"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1210
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v1, "is_first_check"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1212
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    .line 1213
    .local v1, "am":Lcom/sec/internal/helper/PreciseAlarmManager;
    const/16 v2, 0x21

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1214
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, p2, p3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 1217
    return-void
.end method

.method public startP2p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "lineId"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-nez v0, :cond_0

    .line 326
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p lineId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p deviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 329
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsdServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    .line 331
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start Nsd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->start()V

    .line 333
    return-void
.end method

.method public startP2pDiscovery(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p1, "hostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-nez v0, :cond_0

    .line 310
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mNsd is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 313
    :cond_0
    if-nez p1, :cond_1

    .line 314
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "find hostlist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getRegiEventNotifyHostInfo()Ljava/util/List;

    move-result-object p1

    .line 317
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startDiscovery(Ljava/util/ArrayList;)I

    move-result v0

    .line 319
    .local v0, "ret":I
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startDiscovery result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "hostlist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0    # "ret":I
    :cond_2
    return-void
.end method

.method protected stopCmcPdCheckTimer(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    return-void

    .line 1223
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCmcPdCheckTimer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 1226
    .local v0, "am":Lcom/sec/internal/helper/PreciseAlarmManager;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1227
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 1228
    return-void
.end method

.method updateAudioInterfaceByCmc(II)Lcom/sec/ims/ImsRegistration;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I

    .line 954
    const/4 v0, 0x0

    .line 955
    .local v0, "reg":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    .line 957
    const/4 v2, 0x5

    .line 958
    .local v2, "cmcType":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 959
    const/4 v2, 0x7

    .line 961
    :cond_0
    const/4 v3, 0x1

    .local v3, "type":I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 962
    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 963
    if-eqz v0, :cond_1

    .line 964
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    .line 965
    return-object v0

    .line 961
    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .end local v2    # "cmcType":I
    .end local v3    # "type":I
    :cond_2
    goto :goto_1

    .line 968
    :cond_3
    const/16 v2, 0x8

    if-ne p2, v2, :cond_4

    .line 969
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateAudioInterface for CMC SD call."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    goto :goto_2

    .line 968
    :cond_4
    :goto_1
    nop

    .line 973
    :goto_2
    return-object v0
.end method
