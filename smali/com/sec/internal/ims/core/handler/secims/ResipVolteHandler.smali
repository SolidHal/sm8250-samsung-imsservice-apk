.class public Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.super Lcom/sec/internal/ims/core/handler/VolteHandler;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$CmcInfoXmlParser;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeServiceXmlParser;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;,
        Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    }
.end annotation


# static fields
.field private static final ADD_CONF_PARTICIPANT:I = 0x0

.field private static final ALTERNATIVE_SERVICE:Ljava/lang/String; = "application/3gpp-ims+xml"

.field private static final CMC_INFO_MIME_TYPE:Ljava/lang/String; = "application/cmc-info+xml"

.field private static final DIALOG_EVENT_MIME_TYPE:Ljava/lang/String; = "application/dialog-info+xml"

.field private static final EVENT_CALL_STATE_CHANGE:I = 0x64

.field private static final EVENT_CDPN_INFO:I = 0x6b

.field private static final EVENT_CMC_INFO:I = 0x73

.field private static final EVENT_CONFERENCE_UPDATE:I = 0x66

.field private static final EVENT_DEDICATED_BEARER_EVENT:I = 0x6e

.field private static final EVENT_DELAYED_CALL_STATE_CHANGE:I = 0xc8

.field private static final EVENT_DIALOG_EVENT_RECEIVED:I = 0x69

.field private static final EVENT_DTMF_INFO:I = 0x70

.field private static final EVENT_END_CALL_RESPONSE:I = 0x2

.field private static final EVENT_HOLD_CALL_RESPONSE:I = 0x4

.field private static final EVENT_INFO_CALL_RESPONSE:I = 0x7

.field private static final EVENT_MAKE_CALL_RESPONSE:I = 0x1

.field private static final EVENT_MERGE_CALL_RESPONSE:I = 0x3

.field private static final EVENT_MODIFY_CALL:I = 0x6a

.field private static final EVENT_NEW_INCOMING_CALL:I = 0x65

.field private static final EVENT_PULLING_CALL_RESPONSE:I = 0x6

.field private static final EVENT_REFER_RECEIVED:I = 0x67

.field private static final EVENT_REFER_STATUS:I = 0x68

.field private static final EVENT_RESUME_CALL_RESPONSE:I = 0x5

.field private static final EVENT_RRC_CONNECTION:I = 0x6f

.field private static final EVENT_RTP_LOSS_RATE_NOTI:I = 0x6c

.field private static final EVENT_SIPMSG_INFO:I = 0x72

.field private static final EVENT_TEXT_INFO:I = 0x71

.field private static final EVENT_UPDATE_AUDIO_INTEFACE_RESPONSE:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "ResipVolteHandler"

.field private static final MO_TIMEOUT_MILLIS:I = 0x7530

.field private static final REMOVE_CONF_PARTICIPANT:I = 0x1

.field private static final URN_SOS:Ljava/lang/String; = "urn:service:sos"

.field private static final URN_SOS_AMBULANCE:Ljava/lang/String; = "urn:service:sos.ambulance"

.field private static final URN_SOS_FIRE:Ljava/lang/String; = "urn:service:sos.fire"

.field private static final URN_SOS_MARINE:Ljava/lang/String; = "urn:service:sos.marine"

.field private static final URN_SOS_MOUNTAIN:Ljava/lang/String; = "urn:service:sos.mountain"

.field private static final URN_SOS_POLICE:Ljava/lang/String; = "urn:service:sos.police"

.field private static final USSD_INDI_BY_MESSAGE_MIME_TYPE:Ljava/lang/String; = "application/ussd"

.field private static final USSD_MIME_TYPE:Ljava/lang/String; = "application/vnd.3gpp.ussd+xml"

.field private static final mMainSosSubserviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

.field private mAudioInterfaceThread:Landroid/os/HandlerThread;

.field protected mAutomaticMode:[Z

.field private final mCallList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mContext:Landroid/content/Context;

.field private final mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected mRttMode:[I

.field private final mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private final mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected mTtyMode:[I

.field private final mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 197
    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "urn:service:sos"

    const-string/jumbo v2, "urn:service:sos.ambulance"

    const-string/jumbo v3, "urn:service:sos.fire"

    const-string/jumbo v4, "urn:service:sos.marine"

    const-string/jumbo v5, "urn:service:sos.mountain"

    const-string/jumbo v6, "urn:service:sos.police"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mMainSosSubserviceSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 353
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/VolteHandler;-><init>(Landroid/os/Looper;)V

    .line 149
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 150
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 151
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 152
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 153
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 154
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 155
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 156
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 157
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 158
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 159
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 160
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 161
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceThread:Landroid/os/HandlerThread;

    .line 209
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    .line 355
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mContext:Landroid/content/Context;

    .line 356
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 357
    invoke-static {p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 358
    return-void
.end method

.method private IsModifiableNeedToBeIgnored(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/constants/Mno;)Z
    .locals 6
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 2938
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2939
    const/4 v1, 0x0

    .line 2940
    .local v1, "cmcCallCnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2941
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2942
    .local v3, "key":I
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 2943
    .local v4, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2944
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getCmcType()I

    move-result v5

    if-lez v5, :cond_0

    .line 2945
    add-int/lit8 v1, v1, 0x1

    .line 2940
    .end local v3    # "key":I
    .end local v4    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2950
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    const/4 v3, 0x1

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_BOTH:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq p1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    .line 2951
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-le v2, v3, :cond_3

    .line 2952
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 2955
    .end local v1    # "cmcCallCnt":I
    :cond_3
    monitor-exit v0

    .line 2956
    const/4 v0, 0x0

    return v0

    .line 2953
    .restart local v1    # "cmcCallCnt":I
    :cond_4
    :goto_1
    monitor-exit v0

    return v3

    .line 2955
    .end local v1    # "cmcCallCnt":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;Lcom/sec/internal/helper/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
    .param p1, "x1"    # Lcom/sec/internal/helper/AsyncResult;

    .line 129
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onUpdateAudioInterfaceResponse(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private addCall(ILcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "call"    # Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 2882
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2883
    :try_start_0
    const-string v1, "ResipVolteHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add Call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2885
    monitor-exit v0

    .line 2886
    return-void

    .line 2885
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private answerCall(IILjava/lang/String;)I
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "callType"    # I
    .param p3, "cmcCallTime"    # Ljava/lang/String;

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answerCallWithCallType: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmcCallEstablishTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 858
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 859
    const-string v3, "answerCallWithCallType: session not found."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->dumpCall()V

    .line 861
    return v2

    .line 864
    :cond_0
    if-ne p2, v2, :cond_1

    .line 865
    iget p2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 868
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->answerCall(IILjava/lang/String;)V

    .line 870
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-lez v1, :cond_2

    .line 871
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v1

    .line 872
    .local v1, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/sec/internal/log/CmcPingTestLogger;->ping(Ljava/util/List;)V

    .line 875
    .end local v1    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private checkConfererenceCallData(Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I
    .locals 3
    .param p1, "data"    # Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;

    .line 1193
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "ResipVolteHandler"

    if-nez v0, :cond_0

    .line 1194
    const-string v0, "checkConfererenceCallData: conference server uri is not configured."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return v1

    .line 1196
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1197
    const-string v0, "checkConfererenceCallData: confSubscribe no global xml file"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return v1

    .line 1199
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1200
    const-string v0, "checkConfererenceCallData: subscribeDialogType no global xml file"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return v1

    .line 1202
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1203
    const-string v0, "checkConfererenceCallData: referUriType no global xml file"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return v1

    .line 1205
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1206
    const-string v0, "checkConfererenceCallData: removeReferUriType no global xml file"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    return v1

    .line 1208
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1209
    const-string v0, "checkConfererenceCallData: referUriAsserted no global xml file"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    return v1

    .line 1211
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1212
    const-string v0, "checkConfererenceCallData: useAnonymousUpdate no global xml file"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return v1

    .line 1215
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private convertDedicatedBearerState(I)I
    .locals 1
    .param p1, "state"    # I

    .line 2434
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2442
    const/4 v0, 0x0

    return v0

    .line 2440
    :cond_0
    return v0

    .line 2438
    :cond_1
    return v0

    .line 2436
    :cond_2
    return v0
.end method

.method private convertToCallTypeBackward(I)I
    .locals 3
    .param p1, "callType"    # I

    .line 2842
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2876
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToCallType: unknown call type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipVolteHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    return v0

    .line 2874
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 2872
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 2868
    :pswitch_3
    const/16 v0, 0xf

    return v0

    .line 2866
    :pswitch_4
    const/16 v0, 0xe

    return v0

    .line 2870
    :pswitch_5
    const/16 v0, 0xc

    return v0

    .line 2864
    :pswitch_6
    const/16 v0, 0xb

    return v0

    .line 2862
    :pswitch_7
    const/16 v0, 0xa

    return v0

    .line 2860
    :pswitch_8
    const/16 v0, 0x9

    return v0

    .line 2858
    :pswitch_9
    const/16 v0, 0x8

    return v0

    .line 2856
    :pswitch_a
    const/4 v0, 0x7

    return v0

    .line 2854
    :pswitch_b
    const/4 v0, 0x6

    return v0

    .line 2852
    :pswitch_c
    const/4 v0, 0x5

    return v0

    .line 2850
    :pswitch_d
    const/4 v0, 0x4

    return v0

    .line 2848
    :pswitch_e
    const/4 v0, 0x3

    return v0

    .line 2846
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 2844
    :pswitch_10
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private convertToCallTypeForward(I)I
    .locals 3
    .param p1, "callType"    # I

    .line 2800
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2836
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToCallType:: unknown call type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipVolteHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    return v0

    .line 2834
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 2832
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 2830
    :pswitch_3
    const/16 v0, 0xf

    return v0

    .line 2828
    :pswitch_4
    const/16 v0, 0xe

    return v0

    .line 2826
    :pswitch_5
    return v0

    .line 2824
    :pswitch_6
    const/16 v0, 0xc

    return v0

    .line 2822
    :pswitch_7
    const/16 v0, 0xb

    return v0

    .line 2820
    :pswitch_8
    const/16 v0, 0xa

    return v0

    .line 2818
    :pswitch_9
    const/16 v0, 0x9

    return v0

    .line 2816
    :pswitch_a
    const/16 v0, 0x8

    return v0

    .line 2814
    :pswitch_b
    const/4 v0, 0x7

    return v0

    .line 2812
    :pswitch_c
    const/4 v0, 0x6

    return v0

    .line 2810
    :pswitch_d
    const/4 v0, 0x5

    return v0

    .line 2808
    :pswitch_e
    const/4 v0, 0x4

    return v0

    .line 2806
    :pswitch_f
    const/4 v0, 0x3

    return v0

    .line 2804
    :pswitch_10
    const/4 v0, 0x2

    return v0

    .line 2802
    :pswitch_11
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private convertToVolteState(II)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .locals 2
    .param p1, "state"    # I
    .param p2, "statusCode"    # I

    .line 2755
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 2794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToVolteState: unknown Call state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    const/4 v0, 0x0

    return-object v0

    .line 2771
    :pswitch_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->REFRESHFAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2788
    :pswitch_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->SESSIONPROGRESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2781
    :pswitch_2
    if-eqz p2, :cond_0

    const/16 v0, 0x462

    if-eq p2, v0, :cond_0

    .line 2783
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2785
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->MODIFIED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2767
    :pswitch_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_BOTH:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2779
    :pswitch_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->EARLY_MEDIA_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2773
    :pswitch_5
    if-eqz p2, :cond_1

    .line 2774
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2776
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2765
    :pswitch_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2763
    :pswitch_7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2769
    :pswitch_8
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ESTABLISHED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2792
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->EXTEND_TO_CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2790
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->FORWARDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2761
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->RINGING_BACK:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2757
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CALLING:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    .line 2759
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->TRYING:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createCmcInfoContents(IIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "recordEvent"    # I
    .param p3, "extra"    # I
    .param p4, "extSipCallId"    # Ljava/lang/String;

    .line 613
    const-string v0, "external-call-id"

    const-string v1, "extra"

    const-string/jumbo v2, "record-event"

    const-string v3, "cmc-info-data"

    const-string v4, "ResipVolteHandler"

    const-string v5, ""

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 614
    .local v6, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 617
    .local v7, "xmlStringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 618
    const-string v8, "UTF-8"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 619
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 620
    invoke-interface {v6, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 622
    invoke-interface {v6, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 624
    invoke-interface {v6, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    invoke-interface {v6, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    invoke-interface {v6, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    invoke-interface {v6, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    invoke-interface {v6, p4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    invoke-interface {v6, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    invoke-interface {v6, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 636
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to createCmcInfoContents()"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 642
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const-string v1, "application/cmc-info+xml"

    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 643
    .local v1, "mimeOffset":I
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 644
    .local v2, "xmlStringOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 645
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 646
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 647
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 649
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v3

    .line 651
    .local v3, "ret":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createCmcInfoContents: built contents - \n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-object v3
.end method

.method private createUssdContents(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 552
    const-string/jumbo v0, "ussd-string"

    const-string v1, "error-code"

    const-string v2, "UnstructuredSS-Notify"

    const-string v3, "language"

    const-string/jumbo v4, "ussd-data"

    const-string v5, "ResipVolteHandler"

    const-string v6, ""

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 553
    .local v7, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 556
    .local v8, "xmlStringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 557
    const-string v9, "UTF-8"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 558
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 559
    invoke-interface {v7, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    .line 562
    .local v9, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v10, Lcom/sec/internal/constants/Mno;->SMART_CAMBODIA:Lcom/sec/internal/constants/Mno;

    if-eq v9, v10, :cond_3

    .line 563
    invoke-interface {v7, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    sget-object v10, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    if-ne v9, v10, :cond_0

    .line 565
    const-string/jumbo v10, "un"

    invoke-interface {v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 566
    :cond_0
    sget-object v10, Lcom/sec/internal/constants/Mno;->H3G_AT:Lcom/sec/internal/constants/Mno;

    if-eq v9, v10, :cond_2

    sget-object v10, Lcom/sec/internal/constants/Mno;->TIGO_BOLIVIA:Lcom/sec/internal/constants/Mno;

    if-ne v9, v10, :cond_1

    goto :goto_0

    .line 569
    :cond_1
    const-string v10, "en"

    invoke-interface {v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 567
    :cond_2
    :goto_0
    const-string/jumbo v10, "undefined"

    invoke-interface {v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 571
    :goto_1
    invoke-interface {v7, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    :cond_3
    const/4 v3, 0x3

    if-ne p3, v3, :cond_4

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUssdContents: error - \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-interface {v7, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    invoke-interface {v7, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    invoke-interface {v7, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 579
    :cond_4
    const/4 v1, 0x4

    if-ne p3, v1, :cond_5

    .line 580
    const-string v0, "createUssdContents: notify response"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-interface {v7, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    invoke-interface {v7, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 584
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUssdContents: dialstring - \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 586
    invoke-interface {v7, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 587
    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    :goto_2
    invoke-interface {v7, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .end local v9    # "mno":Lcom/sec/internal/constants/Mno;
    goto :goto_3

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to createUssdContents()"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 598
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const-string v1, "application/vnd.3gpp.ussd+xml"

    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 599
    .local v1, "mimeOffset":I
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 600
    .local v2, "xmlStringOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 601
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 602
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 603
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 605
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v3

    .line 607
    .local v3, "ret":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createUssdContents: built contents - \n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-object v3
.end method

.method private dumpCall()V
    .locals 7

    .line 2924
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2925
    :try_start_0
    const-string v1, "ResipVolteHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call List Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2927
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2928
    .local v2, "key":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 2930
    .local v3, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-eqz v3, :cond_0

    .line 2931
    const-string v4, "ResipVolteHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session Id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in the list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    .end local v2    # "key":I
    .end local v3    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2934
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 2935
    return-void

    .line 2934
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCall(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .locals 5
    .param p1, "callType"    # I

    .line 2910
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2911
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2912
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2913
    .local v2, "key":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 2915
    .local v3, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    if-ne v4, p1, :cond_0

    .line 2916
    monitor-exit v0

    return-object v3

    .line 2911
    .end local v2    # "key":I
    .end local v3    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2919
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 2920
    const/4 v0, 0x0

    return-object v0

    .line 2919
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .locals 5
    .param p1, "sessionId"    # I

    .line 2896
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2897
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2898
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2899
    .local v2, "key":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 2901
    .local v3, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    if-ne v4, p1, :cond_0

    .line 2902
    monitor-exit v0

    return-object v3

    .line 2897
    .end local v2    # "key":I
    .end local v3    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2905
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 2906
    const/4 v0, 0x0

    return-object v0

    .line 2905
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 1707
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1708
    return v0

    .line 1710
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1711
    .local v1, "reg":Lcom/sec/ims/ImsRegistration;
    if-nez v1, :cond_1

    .line 1712
    return v0

    .line 1715
    :cond_1
    const-string v0, "mmtel-video"

    invoke-virtual {v1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getParticipantStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .line 2481
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2482
    return v0

    .line 2483
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2484
    return v0

    .line 2485
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 2487
    return v0

    .line 2488
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 2490
    return v0

    .line 2491
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 2493
    return v0

    .line 2494
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 2495
    return v0

    .line 2497
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "service"    # Ljava/lang/String;

    .line 1548
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    return-object v0
.end method

.method private notifyCallStatus(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;I)V
    .locals 38
    .param p1, "call"    # Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .param p2, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .param p3, "cs"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;
    .param p4, "delay"    # I

    .line 1719
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p4

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v5

    goto :goto_0

    .line 1720
    :cond_0
    const/4 v5, 0x1

    :goto_0
    nop

    .line 1721
    .local v5, "callType":I
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v7

    long-to-int v7, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 1722
    .local v7, "statusCode":I
    :goto_1
    const-string v8, ""

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v8

    .line 1723
    .local v9, "reasonPhrase":Ljava/lang/String;
    :goto_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    .line 1724
    .local v10, "remoteVideoCapa":Z
    :goto_3
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v11

    long-to-int v11, v11

    goto :goto_4

    :cond_4
    const/16 v11, 0x1e0

    .line 1725
    .local v11, "width":I
    :goto_4
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v12

    long-to-int v12, v12

    goto :goto_5

    :cond_5
    const/16 v12, 0x280

    .line 1726
    .local v12, "height":I
    :goto_5
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->conferenceSupport()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    .line 1727
    .local v14, "conferenceSupport":Ljava/lang/String;
    :goto_6
    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    goto :goto_7

    :cond_7
    const/4 v15, 0x0

    .line 1728
    .local v15, "isFocus":Z
    :goto_7
    if-eqz v10, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    goto :goto_8

    :cond_8
    const/16 v16, 0x0

    .line 1729
    .local v16, "modifiable":Z
    :goto_8
    if-eqz p3, :cond_9

    move-object/from16 v18, v14

    .end local v14    # "conferenceSupport":Ljava/lang/String;
    .local v18, "conferenceSupport":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->localVideoRtpPort()J

    move-result-wide v13

    long-to-int v13, v13

    goto :goto_9

    .end local v18    # "conferenceSupport":Ljava/lang/String;
    .restart local v14    # "conferenceSupport":Ljava/lang/String;
    :cond_9
    move-object/from16 v18, v14

    .end local v14    # "conferenceSupport":Ljava/lang/String;
    .restart local v18    # "conferenceSupport":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1730
    .local v13, "localVideoRtpPort":I
    :goto_9
    if-eqz p3, :cond_a

    move/from16 v19, v7

    .end local v7    # "statusCode":I
    .local v19, "statusCode":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->localVideoRtcpPort()J

    move-result-wide v6

    long-to-int v6, v6

    goto :goto_a

    .end local v19    # "statusCode":I
    .restart local v7    # "statusCode":I
    :cond_a
    move/from16 v19, v7

    .end local v7    # "statusCode":I
    .restart local v19    # "statusCode":I
    const/4 v6, 0x0

    .line 1731
    .local v6, "localVideoRtcpPort":I
    :goto_a
    if-eqz p3, :cond_b

    move v7, v15

    .end local v15    # "isFocus":Z
    .local v7, "isFocus":Z
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoRtpPort()J

    move-result-wide v14

    long-to-int v14, v14

    goto :goto_b

    .end local v7    # "isFocus":Z
    .restart local v15    # "isFocus":Z
    :cond_b
    move v7, v15

    .end local v15    # "isFocus":Z
    .restart local v7    # "isFocus":Z
    const/4 v14, 0x0

    .line 1732
    .local v14, "remoteVideoRtpPort":I
    :goto_b
    if-eqz p3, :cond_c

    move/from16 v21, v5

    .end local v5    # "callType":I
    .local v21, "callType":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoRtcpPort()J

    move-result-wide v4

    long-to-int v4, v4

    goto :goto_c

    .end local v21    # "callType":I
    .restart local v5    # "callType":I
    :cond_c
    move/from16 v21, v5

    .end local v5    # "callType":I
    .restart local v21    # "callType":I
    const/4 v4, 0x0

    .line 1733
    .local v4, "remoteVideoRtcpPort":I
    :goto_c
    if-eqz p3, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->serviceUrn()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_d
    const/4 v5, 0x0

    .line 1734
    .local v5, "serviceUrn":Ljava/lang/String;
    :goto_d
    if-eqz p3, :cond_e

    move/from16 v22, v4

    .end local v4    # "remoteVideoRtcpPort":I
    .local v22, "remoteVideoRtcpPort":I
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->retryAfter()J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_e

    .end local v22    # "remoteVideoRtcpPort":I
    .restart local v4    # "remoteVideoRtcpPort":I
    :cond_e
    move/from16 v22, v4

    .end local v4    # "remoteVideoRtcpPort":I
    .restart local v22    # "remoteVideoRtcpPort":I
    const/4 v3, 0x0

    .line 1735
    .local v3, "retryAfter":I
    :goto_e
    if-eqz p3, :cond_10

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->localHoldTone()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_f

    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v4, 0x1

    .line 1736
    .local v4, "localHoldTone":Z
    :goto_10
    if-eqz p3, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->historyInfo()Ljava/lang/String;

    move-result-object v23

    goto :goto_11

    :cond_11
    move-object/from16 v23, v8

    :goto_11
    move-object/from16 v24, v23

    .line 1737
    .local v24, "historyInfo":Ljava/lang/String;
    if-eqz p3, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->dtmfEvent()Ljava/lang/String;

    move-result-object v23

    goto :goto_12

    :cond_12
    move-object/from16 v23, v8

    :goto_12
    move-object/from16 v25, v23

    .line 1738
    .local v25, "dtmfEvent":Ljava/lang/String;
    if-eqz p3, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cvoEnabled()Z

    move-result v23

    if-eqz v23, :cond_13

    goto :goto_13

    :cond_13
    const/16 v23, 0x0

    goto :goto_14

    :cond_14
    :goto_13
    const/16 v23, 0x1

    :goto_14
    move/from16 v26, v23

    .line 1739
    .local v26, "cvoEnabled":Z
    if-eqz p3, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->alertInfo()Ljava/lang/String;

    move-result-object v23

    goto :goto_15

    :cond_15
    const/16 v23, 0x0

    :goto_15
    move-object/from16 v27, v23

    .line 1740
    .local v27, "alertInfo":Ljava/lang/String;
    if-eqz p3, :cond_16

    move/from16 v23, v3

    move/from16 v28, v4

    .end local v3    # "retryAfter":I
    .end local v4    # "localHoldTone":Z
    .local v23, "retryAfter":I
    .local v28, "localHoldTone":Z
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->videoCrbtType()J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_16

    .end local v23    # "retryAfter":I
    .end local v28    # "localHoldTone":Z
    .restart local v3    # "retryAfter":I
    .restart local v4    # "localHoldTone":Z
    :cond_16
    move/from16 v23, v3

    move/from16 v28, v4

    .end local v3    # "retryAfter":I
    .end local v4    # "localHoldTone":Z
    .restart local v23    # "retryAfter":I
    .restart local v28    # "localHoldTone":Z
    const/4 v3, 0x0

    .line 1741
    .local v3, "videoCrbtType":I
    :goto_16
    if-eqz p3, :cond_17

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cmcDeviceId()Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    :cond_17
    move-object v4, v8

    .line 1742
    .local v4, "cmcDeviceId":Ljava/lang/String;
    :goto_17
    if-eqz p3, :cond_18

    move/from16 v29, v3

    move-object/from16 v30, v4

    .end local v3    # "videoCrbtType":I
    .end local v4    # "cmcDeviceId":Ljava/lang/String;
    .local v29, "videoCrbtType":I
    .local v30, "cmcDeviceId":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioRxTrackId()J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_18

    .end local v29    # "videoCrbtType":I
    .end local v30    # "cmcDeviceId":Ljava/lang/String;
    .restart local v3    # "videoCrbtType":I
    .restart local v4    # "cmcDeviceId":Ljava/lang/String;
    :cond_18
    move/from16 v29, v3

    move-object/from16 v30, v4

    .end local v3    # "videoCrbtType":I
    .end local v4    # "cmcDeviceId":Ljava/lang/String;
    .restart local v29    # "videoCrbtType":I
    .restart local v30    # "cmcDeviceId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1743
    .local v3, "audioRxTrackId":I
    :goto_18
    if-eqz p3, :cond_19

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioBitRate()Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    :cond_19
    move-object v4, v8

    .line 1744
    .local v4, "audioBitRate":Ljava/lang/String;
    :goto_19
    if-eqz p3, :cond_1a

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cmcCallTime()Ljava/lang/String;

    move-result-object v8

    .line 1745
    .local v8, "cmcCallTime":Ljava/lang/String;
    :cond_1a
    if-eqz p3, :cond_1b

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->featureCaps()Ljava/lang/String;

    move-result-object v17

    goto :goto_1a

    :cond_1b
    const/16 v17, 0x0

    :goto_1a
    move-object/from16 v31, v17

    .line 1746
    .local v31, "featureCaps":Ljava/lang/String;
    if-eqz p3, :cond_1c

    move/from16 v17, v3

    move-object/from16 v32, v4

    .end local v3    # "audioRxTrackId":I
    .end local v4    # "audioBitRate":Ljava/lang/String;
    .local v17, "audioRxTrackId":I
    .local v32, "audioBitRate":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioEarlyMediaDir()J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_1b

    .end local v17    # "audioRxTrackId":I
    .end local v32    # "audioBitRate":Ljava/lang/String;
    .restart local v3    # "audioRxTrackId":I
    .restart local v4    # "audioBitRate":Ljava/lang/String;
    :cond_1c
    move/from16 v17, v3

    move-object/from16 v32, v4

    .end local v3    # "audioRxTrackId":I
    .end local v4    # "audioBitRate":Ljava/lang/String;
    .restart local v17    # "audioRxTrackId":I
    .restart local v32    # "audioBitRate":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1747
    .local v3, "audioEarlyMediaDir":I
    :goto_1b
    iget-object v4, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 1748
    .local v4, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_1d

    move-object/from16 v33, v5

    goto :goto_1c

    :cond_1d
    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    :goto_1c
    move-object/from16 v34, v33

    .line 1750
    .local v34, "processedServiceUrn":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v5

    .end local v5    # "serviceUrn":Ljava/lang/String;
    .local v35, "serviceUrn":Ljava/lang/String;
    const-string v5, "notifyCallStatus() session: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callstate: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", callType: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v21

    .end local v21    # "callType":I
    .local v5, "callType":I
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    .end local v19    # "statusCode":I
    .local v1, "statusCode":I
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "statusCode":I
    .restart local v19    # "statusCode":I
    const-string v1, ", reasonPhrase: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteVideoCapa: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", localVideoCapa: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFocus: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", conferenceSupport: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    .end local v18    # "conferenceSupport":Ljava/lang/String;
    .local v1, "conferenceSupport":Ljava/lang/String;
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v10

    .end local v10    # "remoteVideoCapa":Z
    .local v18, "remoteVideoCapa":Z
    const-string v10, ", localVideoRtpPort: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", localVideoRtcpPort: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", RemoteVideoRtpPort: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", RemoteVideoRtcpPort: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v22

    .end local v22    # "remoteVideoRtcpPort":I
    .local v10, "remoteVideoRtcpPort":I
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v21, v12

    .end local v12    # "height":I
    .local v21, "height":I
    const-string v12, ", ServiceUrn: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v34

    .end local v34    # "processedServiceUrn":Ljava/lang/String;
    .local v12, "processedServiceUrn":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v12

    .end local v12    # "processedServiceUrn":Ljava/lang/String;
    .local v22, "processedServiceUrn":Ljava/lang/String;
    const-string v12, ", retryAfter: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v23

    .end local v23    # "retryAfter":I
    .local v12, "retryAfter":I
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v12    # "retryAfter":I
    .restart local v23    # "retryAfter":I
    const-string v12, ", historyInfo: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v24

    .end local v24    # "historyInfo":Ljava/lang/String;
    .local v12, "historyInfo":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v12    # "historyInfo":Ljava/lang/String;
    .restart local v24    # "historyInfo":Ljava/lang/String;
    const-string v12, ", dtmfEvent: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v25

    .end local v25    # "dtmfEvent":Ljava/lang/String;
    .local v12, "dtmfEvent":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v12    # "dtmfEvent":Ljava/lang/String;
    .restart local v25    # "dtmfEvent":Ljava/lang/String;
    const-string v12, ", holdTone: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v28

    .end local v28    # "localHoldTone":Z
    .local v12, "localHoldTone":Z
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v12    # "localHoldTone":Z
    .restart local v28    # "localHoldTone":Z
    const-string v12, ", cvoEnabled : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v26

    .end local v26    # "cvoEnabled":Z
    .local v12, "cvoEnabled":Z
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v12    # "cvoEnabled":Z
    .restart local v26    # "cvoEnabled":Z
    const-string v12, ", AlertInfo : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v27

    .end local v27    # "alertInfo":Ljava/lang/String;
    .local v12, "alertInfo":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v12    # "alertInfo":Ljava/lang/String;
    .restart local v27    # "alertInfo":Ljava/lang/String;
    const-string v12, ", videoCrbtType : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v29

    .end local v29    # "videoCrbtType":I
    .local v12, "videoCrbtType":I
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v12    # "videoCrbtType":I
    .restart local v29    # "videoCrbtType":I
    const-string v12, ", cmcDeviceId : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v30

    .end local v30    # "cmcDeviceId":Ljava/lang/String;
    .local v12, "cmcDeviceId":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v12    # "cmcDeviceId":Ljava/lang/String;
    .restart local v30    # "cmcDeviceId":Ljava/lang/String;
    const-string v12, ", audioRxTrackId : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v17

    .end local v17    # "audioRxTrackId":I
    .local v12, "audioRxTrackId":I
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v12    # "audioRxTrackId":I
    .restart local v17    # "audioRxTrackId":I
    const-string v12, ", audioBitRate : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v32

    .end local v32    # "audioBitRate":Ljava/lang/String;
    .local v12, "audioBitRate":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v12    # "audioBitRate":Ljava/lang/String;
    .restart local v32    # "audioBitRate":Ljava/lang/String;
    const-string v12, ", cmcCallTime : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", featureCaps: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v31

    .end local v31    # "featureCaps":Ljava/lang/String;
    .local v12, "featureCaps":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v8

    .end local v8    # "cmcCallTime":Ljava/lang/String;
    .local v31, "cmcCallTime":Ljava/lang/String;
    const-string v8, ", audioEarlyMediaDir: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1750
    const-string v15, "ResipVolteHandler"

    invoke-static {v15, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    if-eqz v1, :cond_1e

    .line 1778
    iget-object v8, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v8, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setConferenceSupported(Ljava/lang/String;)V

    .line 1781
    :cond_1e
    if-eqz v7, :cond_21

    .line 1782
    iget-object v8, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object/from16 v36, v1

    .end local v1    # "conferenceSupport":Ljava/lang/String;
    .local v36, "conferenceSupport":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v8, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIsFocus(Ljava/lang/String;)V

    .line 1783
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_EG:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->PROXIMUS:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELENOR_NORWAY:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->ZAIN_KSA:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->MTN_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->ETISALAT_EG:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->DIGI_HUNGARY:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->XL_ID:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_20

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v1, :cond_1f

    const/4 v1, 0x1

    if-eq v5, v1, :cond_20

    move-object v1, v15

    const/4 v8, 0x5

    if-ne v5, v8, :cond_22

    goto :goto_1d

    :cond_1f
    move-object v1, v15

    goto :goto_1e

    :cond_20
    move-object v1, v15

    .line 1789
    :goto_1d
    const/16 v16, 0x0

    goto :goto_1e

    .line 1781
    .end local v36    # "conferenceSupport":Ljava/lang/String;
    .restart local v1    # "conferenceSupport":Ljava/lang/String;
    :cond_21
    move-object/from16 v36, v1

    move-object v1, v15

    .line 1793
    .end local v1    # "conferenceSupport":Ljava/lang/String;
    .restart local v36    # "conferenceSupport":Ljava/lang/String;
    :cond_22
    :goto_1e
    sget-object v8, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v4, v8, :cond_26

    sget-object v8, Lcom/sec/internal/constants/Mno;->TELENOR_SWE:Lcom/sec/internal/constants/Mno;

    if-eq v4, v8, :cond_26

    sget-object v8, Lcom/sec/internal/constants/Mno;->VODAFONE_EG:Lcom/sec/internal/constants/Mno;

    if-eq v4, v8, :cond_26

    sget-object v8, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-eq v4, v8, :cond_26

    sget-object v8, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v4, v8, :cond_26

    sget-object v8, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-eq v4, v8, :cond_26

    sget-object v8, Lcom/sec/internal/constants/Mno;->WE_EG:Lcom/sec/internal/constants/Mno;

    if-eq v4, v8, :cond_26

    .line 1796
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isIndia()Z

    move-result v8

    if-nez v8, :cond_25

    sget-object v8, Lcom/sec/internal/constants/Mno;->XL_ID:Lcom/sec/internal/constants/Mno;

    if-eq v4, v8, :cond_25

    sget-object v8, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v8, :cond_23

    const/4 v8, 0x1

    if-eq v5, v8, :cond_27

    const/4 v15, 0x5

    if-ne v5, v15, :cond_24

    goto :goto_1f

    :cond_23
    const/4 v8, 0x1

    :cond_24
    const/16 v33, 0x0

    goto :goto_20

    :cond_25
    const/4 v8, 0x1

    goto :goto_1f

    .line 1793
    :cond_26
    const/4 v8, 0x1

    .line 1796
    :cond_27
    :goto_1f
    move/from16 v33, v8

    :goto_20
    move/from16 v15, v33

    .line 1799
    .local v15, "disableVideocallBtn":Z
    iget-boolean v8, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v8, :cond_28

    if-eqz v15, :cond_28

    .line 1800
    const/16 v16, 0x0

    .line 1803
    :cond_28
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v0, v8, :cond_29

    sget-object v8, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v4, v8, :cond_29

    .line 1804
    const/16 v16, 0x0

    .line 1807
    :cond_29
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v8

    if-nez v8, :cond_2b

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v8

    if-nez v8, :cond_2b

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v8

    if-eqz v8, :cond_2a

    goto :goto_21

    :cond_2a
    move/from16 v34, v15

    move/from16 v8, v16

    move/from16 v16, v7

    goto :goto_23

    .line 1808
    :cond_2b
    :goto_21
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v8

    if-eqz v8, :cond_2c

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2c

    const/16 v8, 0xb0

    if-ne v11, v8, :cond_2c

    .line 1809
    const-string v8, "force to set modifiable to false for 3G QCIF Video Call"

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const/4 v8, 0x0

    .end local v16    # "modifiable":Z
    .local v8, "modifiable":Z
    goto :goto_22

    .line 1812
    .end local v8    # "modifiable":Z
    .restart local v16    # "modifiable":Z
    :cond_2c
    move/from16 v8, v16

    .end local v16    # "modifiable":Z
    .restart local v8    # "modifiable":Z
    :goto_22
    move/from16 v16, v7

    .end local v7    # "isFocus":Z
    .local v16, "isFocus":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v15

    .end local v15    # "disableVideocallBtn":Z
    .local v34, "disableVideocallBtn":Z
    const-string/jumbo v15, "setModifyHeader : "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v7, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setModifyHeader(Ljava/lang/String;)V

    .line 1816
    :goto_23
    move-object/from16 v7, p0

    invoke-direct {v7, v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->IsModifiableNeedToBeIgnored(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/constants/Mno;)Z

    move-result v15

    if-eqz v15, :cond_2d

    .line 1817
    const/4 v8, 0x0

    .line 1818
    const-string v15, "force to set modifiable to false"

    invoke-static {v1, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_2d
    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq v0, v15, :cond_2e

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-eq v0, v15, :cond_2e

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->HELD_BOTH:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v0, v15, :cond_30

    :cond_2e
    sget-object v15, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v4, v15, :cond_2f

    sget-object v15, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v4, v15, :cond_30

    .line 1823
    :cond_2f
    const/4 v8, 0x0

    .line 1824
    const-string v15, "force to set modifiable to false when call is held!!"

    invoke-static {v1, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :cond_30
    sget-object v15, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v4, v15, :cond_31

    const/4 v15, 0x7

    if-ne v5, v15, :cond_31

    .line 1828
    const/4 v8, 0x1

    .line 1829
    const-string v15, "force to set modifiable to true for Docomo"

    invoke-static {v1, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_31
    sget-object v15, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/16 v0, 0x2c5

    if-eq v4, v15, :cond_33

    sget-object v15, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v4, v15, :cond_32

    goto :goto_24

    :cond_32
    move/from16 v15, v19

    goto :goto_25

    :cond_33
    :goto_24
    move/from16 v15, v19

    .end local v19    # "statusCode":I
    .local v15, "statusCode":I
    if-ne v15, v0, :cond_34

    .line 1833
    const-string v0, "deleteTcpClientSocket() at INVITE FLUSH"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 1837
    :cond_34
    :goto_25
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x196

    if-eq v15, v0, :cond_35

    const/16 v0, 0x198

    if-eq v15, v0, :cond_35

    const/16 v0, 0x2c5

    if-ne v15, v0, :cond_36

    .line 1838
    :cond_35
    const-string v0, "deleteTcpClientSocket() at INVITE FLUSH for KOR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 1842
    :cond_36
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    if-ne v4, v0, :cond_37

    const/16 v0, 0x156f

    if-ne v15, v0, :cond_37

    .line 1843
    const-string v0, "Session Terminated by UE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1844
    const-string v0, "Remote side ends the call normally."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->ENDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 1846
    .end local p2    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .local v0, "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    const/4 v15, 0x0

    move v7, v15

    move-object v15, v0

    goto :goto_26

    .line 1849
    .end local v0    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .restart local p2    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    :cond_37
    move v7, v15

    move-object/from16 v15, p2

    .end local p2    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .local v7, "statusCode":I
    .local v15, "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    :goto_26
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v13}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setLocalVideoRTPPort(I)V

    .line 1850
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setLocalVideoRTCPPort(I)V

    .line 1851
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRemoteVideoRTPPort(I)V

    .line 1852
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v10}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setRemoteVideoRTCPPort(I)V

    .line 1853
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v19, v6

    move/from16 v6, v28

    .end local v28    # "localHoldTone":Z
    .local v6, "localHoldTone":Z
    .local v19, "localVideoRtcpPort":I
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setLocalHoldTone(Z)V

    .line 1854
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object/from16 v6, v24

    .end local v24    # "historyInfo":Ljava/lang/String;
    .local v6, "historyInfo":Ljava/lang/String;
    .restart local v28    # "localHoldTone":Z
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setHistoryInfo(Ljava/lang/String;)V

    .line 1855
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object/from16 v6, v25

    .end local v25    # "dtmfEvent":Ljava/lang/String;
    .local v6, "dtmfEvent":Ljava/lang/String;
    .restart local v24    # "historyInfo":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setDtmfEvent(Ljava/lang/String;)V

    .line 1856
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    if-eqz v26, :cond_38

    move-object/from16 p2, v6

    const/4 v6, 0x0

    goto :goto_27

    :cond_38
    const/16 v25, -0x1

    move-object/from16 p2, v6

    move/from16 v6, v25

    .end local v6    # "dtmfEvent":Ljava/lang/String;
    .local p2, "dtmfEvent":Ljava/lang/String;
    :goto_27
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoOrientation(I)V

    .line 1857
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object/from16 v6, v27

    .end local v27    # "alertInfo":Ljava/lang/String;
    .local v6, "alertInfo":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAlertInfo(Ljava/lang/String;)V

    .line 1858
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v6, v29

    .end local v29    # "videoCrbtType":I
    .local v6, "videoCrbtType":I
    .restart local v27    # "alertInfo":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoCrbtType(I)V

    .line 1859
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v11}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoWidth(I)V

    .line 1860
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v6, v21

    .end local v21    # "height":I
    .local v6, "height":I
    .restart local v29    # "videoCrbtType":I
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoHeight(I)V

    .line 1861
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move/from16 v6, v17

    .end local v17    # "audioRxTrackId":I
    .local v6, "audioRxTrackId":I
    .restart local v21    # "height":I
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioRxTrackId(I)V

    .line 1862
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object/from16 v6, v32

    .end local v32    # "audioBitRate":Ljava/lang/String;
    .local v6, "audioBitRate":Ljava/lang/String;
    .restart local v17    # "audioRxTrackId":I
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioBitRate(Ljava/lang/String;)V

    .line 1863
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v12}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setFeatureCaps(Ljava/lang/String;)V

    .line 1864
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioEarlyMediaDir(I)V

    .line 1865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v3

    .end local v3    # "audioEarlyMediaDir":I
    .local v25, "audioEarlyMediaDir":I
    const-string/jumbo v3, "setVideoOrientation_resip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoOrientation()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    move-object v3, v0

    .line 1868
    .local v3, "callStateEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCallType(I)V

    .line 1869
    iget v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 1870
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setPeerAddr(Lcom/sec/ims/util/NameAddr;)V

    .line 1871
    invoke-virtual {v3, v15}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 1872
    new-instance v0, Lcom/sec/ims/util/SipError;

    invoke-direct {v0, v7, v9}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 1873
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 1874
    invoke-virtual {v3, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setRemoteVideoCapa(Z)V

    .line 1875
    move/from16 v32, v5

    move/from16 v5, v23

    .end local v23    # "retryAfter":I
    .local v5, "retryAfter":I
    .local v32, "callType":I
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setRetryAfter(I)V

    .line 1876
    iget-boolean v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    invoke-virtual {v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setConference(Z)V

    .line 1877
    move-object/from16 v5, v30

    .end local v30    # "cmcDeviceId":Ljava/lang/String;
    .local v5, "cmcDeviceId":Ljava/lang/String;
    .restart local v23    # "retryAfter":I
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCmcDeviceId(Ljava/lang/String;)V

    .line 1878
    move-object/from16 v5, v31

    .end local v31    # "cmcCallTime":Ljava/lang/String;
    .local v5, "cmcCallTime":Ljava/lang/String;
    .restart local v30    # "cmcDeviceId":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCmcCallTime(Ljava/lang/String;)V

    .line 1880
    if-eqz p3, :cond_45

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1881
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v5

    .end local v5    # "cmcCallTime":Ljava/lang/String;
    .restart local v31    # "cmcCallTime":Ljava/lang/String;
    const-string v5, "application/3gpp-ims+xml"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1883
    nop

    .line 1884
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v0

    .line 1883
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeServiceXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;

    move-result-object v0

    .line 1885
    .local v0, "as":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_7

    move-object/from16 v37, v6

    .end local v6    # "audioBitRate":Ljava/lang/String;
    .local v37, "audioBitRate":Ljava/lang/String;
    :try_start_1
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->INITIAL_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_6

    if-ne v5, v6, :cond_39

    .line 1886
    :try_start_2
    const-string v5, "initial registration handling required!"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeService(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;)V

    .line 1888
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceType(Ljava/lang/String;)V

    .line 1889
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceReason(Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1890
    move-object/from16 v5, v35

    .end local v35    # "serviceUrn":Ljava/lang/String;
    .local v5, "serviceUrn":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V
    :try_end_3
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v35, v7

    move/from16 v20, v8

    goto/16 :goto_2b

    .line 1928
    .end local v0    # "as":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;
    :catch_0
    move-exception v0

    move/from16 v35, v7

    move/from16 v20, v8

    goto/16 :goto_2c

    .end local v5    # "serviceUrn":Ljava/lang/String;
    .restart local v35    # "serviceUrn":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v5, v35

    move/from16 v35, v7

    move/from16 v20, v8

    .end local v35    # "serviceUrn":Ljava/lang/String;
    .restart local v5    # "serviceUrn":Ljava/lang/String;
    goto/16 :goto_2c

    .line 1891
    .end local v5    # "serviceUrn":Ljava/lang/String;
    .restart local v0    # "as":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;
    .restart local v35    # "serviceUrn":Ljava/lang/String;
    :cond_39
    move-object/from16 v5, v35

    .end local v35    # "serviceUrn":Ljava/lang/String;
    .restart local v5    # "serviceUrn":Ljava/lang/String;
    :try_start_4
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;
    :try_end_4
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_4 .. :try_end_4} :catch_5

    move/from16 v35, v7

    .end local v7    # "statusCode":I
    .local v35, "statusCode":I
    :try_start_5
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;
    :try_end_5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_5 .. :try_end_5} :catch_4

    if-eq v6, v7, :cond_3c

    :try_start_6
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v6, v7, :cond_3a

    goto :goto_28

    .line 1921
    :cond_3a
    sget-object v6, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v4, v6, :cond_3b

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 1922
    const-string v6, "For CMCC emergency call alternative-service handling required!"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceType(Ljava/lang/String;)V

    .line 1924
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceReason(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V
    :try_end_6
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_6 .. :try_end_6} :catch_2

    move/from16 v20, v8

    goto/16 :goto_2b

    .line 1921
    :cond_3b
    move/from16 v20, v8

    goto/16 :goto_2b

    .line 1928
    .end local v0    # "as":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;
    :catch_2
    move-exception v0

    move/from16 v20, v8

    goto/16 :goto_2c

    .line 1893
    .restart local v0    # "as":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;
    :cond_3c
    :goto_28
    :try_start_7
    iget-object v6, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v6

    iget-object v7, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v6

    .line 1894
    .local v6, "eMCBS":Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    iget-object v7, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupport380PolicyByEmcbs()Z

    move-result v7
    :try_end_7
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v7, :cond_3d

    :try_start_8
    sget-object v7, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    :try_end_8
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_8 .. :try_end_8} :catch_2

    if-ne v6, v7, :cond_3d

    const/16 v33, 0x1

    goto :goto_29

    :cond_3d
    const/16 v33, 0x0

    :goto_29
    move/from16 v7, v33

    .line 1897
    .local v7, "needCheckEmbcsFor380AlterHandle":Z
    move/from16 v20, v8

    .end local v8    # "modifiable":Z
    .local v20, "modifiable":Z
    const-string/jumbo v8, "urn:service:sos"

    if-eqz v7, :cond_3e

    :try_start_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_3e

    .line 1898
    move/from16 v33, v7

    .end local v7    # "needCheckEmbcsFor380AlterHandle":Z
    .local v33, "needCheckEmbcsFor380AlterHandle":Z
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3f

    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mMainSosSubserviceSet:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 1900
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alternative-service handling NOT required! serviceUrn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " eMCBS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1897
    .end local v33    # "needCheckEmbcsFor380AlterHandle":Z
    .restart local v7    # "needCheckEmbcsFor380AlterHandle":Z
    :cond_3e
    move/from16 v33, v7

    .line 1902
    .end local v7    # "needCheckEmbcsFor380AlterHandle":Z
    .restart local v33    # "needCheckEmbcsFor380AlterHandle":Z
    :cond_3f
    iget-object v7, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSosUrnRequired()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 1903
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 1904
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 1905
    :cond_40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alternative-service handling NOT required!, eMCBS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1908
    :cond_41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alternative-service handling required!, eMCBS: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeService(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;)V

    .line 1910
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceType(Ljava/lang/String;)V

    .line 1911
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceReason(Ljava/lang/String;)V

    .line 1912
    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v4, v2, :cond_42

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_42
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;->mAction:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v2, v7, :cond_43

    .line 1914
    invoke-virtual {v3, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V

    goto :goto_2a

    .line 1917
    :cond_43
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setAlternativeServiceUrn(Ljava/lang/String;)V
    :try_end_9
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1920
    .end local v6    # "eMCBS":Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .end local v33    # "needCheckEmbcsFor380AlterHandle":Z
    :goto_2a
    nop

    .line 1930
    .end local v0    # "as":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AlternativeService;
    :goto_2b
    goto :goto_2d

    .line 1928
    :catch_3
    move-exception v0

    goto :goto_2c

    .end local v20    # "modifiable":Z
    .restart local v8    # "modifiable":Z
    :catch_4
    move-exception v0

    move/from16 v20, v8

    .end local v8    # "modifiable":Z
    .restart local v20    # "modifiable":Z
    goto :goto_2c

    .end local v20    # "modifiable":Z
    .end local v35    # "statusCode":I
    .local v7, "statusCode":I
    .restart local v8    # "modifiable":Z
    :catch_5
    move-exception v0

    move/from16 v35, v7

    move/from16 v20, v8

    .end local v7    # "statusCode":I
    .end local v8    # "modifiable":Z
    .restart local v20    # "modifiable":Z
    .restart local v35    # "statusCode":I
    goto :goto_2c

    .end local v5    # "serviceUrn":Ljava/lang/String;
    .end local v20    # "modifiable":Z
    .restart local v7    # "statusCode":I
    .restart local v8    # "modifiable":Z
    .local v35, "serviceUrn":Ljava/lang/String;
    :catch_6
    move-exception v0

    move/from16 v20, v8

    move-object/from16 v5, v35

    move/from16 v35, v7

    .end local v7    # "statusCode":I
    .end local v8    # "modifiable":Z
    .restart local v5    # "serviceUrn":Ljava/lang/String;
    .restart local v20    # "modifiable":Z
    .local v35, "statusCode":I
    goto :goto_2c

    .end local v5    # "serviceUrn":Ljava/lang/String;
    .end local v20    # "modifiable":Z
    .end local v37    # "audioBitRate":Ljava/lang/String;
    .local v6, "audioBitRate":Ljava/lang/String;
    .restart local v7    # "statusCode":I
    .restart local v8    # "modifiable":Z
    .local v35, "serviceUrn":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v37, v6

    move/from16 v20, v8

    move-object/from16 v5, v35

    move/from16 v35, v7

    .line 1929
    .end local v6    # "audioBitRate":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v8    # "modifiable":Z
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    .restart local v5    # "serviceUrn":Ljava/lang/String;
    .restart local v20    # "modifiable":Z
    .local v35, "statusCode":I
    .restart local v37    # "audioBitRate":Ljava/lang/String;
    :goto_2c
    const-string v2, "notifyCallStatus: error parsing AlternativeService xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 1881
    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    .end local v5    # "serviceUrn":Ljava/lang/String;
    .end local v20    # "modifiable":Z
    .end local v37    # "audioBitRate":Ljava/lang/String;
    .restart local v6    # "audioBitRate":Ljava/lang/String;
    .restart local v7    # "statusCode":I
    .restart local v8    # "modifiable":Z
    .local v35, "serviceUrn":Ljava/lang/String;
    :cond_44
    move-object/from16 v37, v6

    move/from16 v20, v8

    move-object/from16 v5, v35

    move/from16 v35, v7

    .end local v6    # "audioBitRate":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v8    # "modifiable":Z
    .restart local v5    # "serviceUrn":Ljava/lang/String;
    .restart local v20    # "modifiable":Z
    .local v35, "statusCode":I
    .restart local v37    # "audioBitRate":Ljava/lang/String;
    goto :goto_2d

    .line 1880
    .end local v20    # "modifiable":Z
    .end local v31    # "cmcCallTime":Ljava/lang/String;
    .end local v37    # "audioBitRate":Ljava/lang/String;
    .local v5, "cmcCallTime":Ljava/lang/String;
    .restart local v6    # "audioBitRate":Ljava/lang/String;
    .restart local v7    # "statusCode":I
    .restart local v8    # "modifiable":Z
    .local v35, "serviceUrn":Ljava/lang/String;
    :cond_45
    move-object/from16 v31, v5

    move-object/from16 v37, v6

    move/from16 v20, v8

    move-object/from16 v5, v35

    move/from16 v35, v7

    .line 1933
    .end local v6    # "audioBitRate":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v8    # "modifiable":Z
    .local v5, "serviceUrn":Ljava/lang/String;
    .restart local v20    # "modifiable":Z
    .restart local v31    # "cmcCallTime":Ljava/lang/String;
    .local v35, "statusCode":I
    .restart local v37    # "audioBitRate":Ljava/lang/String;
    :goto_2d
    move/from16 v1, p4

    if-lez v1, :cond_46

    .line 1934
    const/16 v0, 0xc8

    move-object/from16 v2, p0

    move/from16 v6, v35

    .end local v35    # "statusCode":I
    .local v6, "statusCode":I
    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v7, v1

    invoke-virtual {v2, v0, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1936
    return-void

    .line 1938
    .end local v6    # "statusCode":I
    .restart local v35    # "statusCode":I
    :cond_46
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1939
    return-void
.end method

.method private notifyIncomingCall(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V
    .locals 16
    .param p1, "call"    # Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .param p2, "cs"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    .line 1670
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ResipVolteHandler"

    if-nez v1, :cond_0

    .line 1671
    const-string v3, "notifyIncomingCall : incoming call instance is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return-void

    .line 1675
    :cond_0
    const/4 v3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v4

    goto :goto_0

    .line 1676
    :cond_1
    move v4, v3

    :goto_0
    nop

    .line 1678
    .local v4, "callType":I
    const/4 v5, 0x0

    .line 1679
    .local v5, "hasRemoteVideoCapa":Z
    const/16 v6, 0x1e0

    .line 1680
    .local v6, "width":I
    const/16 v7, 0x280

    .line 1681
    .local v7, "height":I
    if-eqz p2, :cond_6

    .line 1682
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v3, v9

    :goto_1
    move v5, v3

    .line 1683
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v10

    long-to-int v6, v10

    .line 1684
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v10

    long-to-int v7, v10

    .line 1686
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 1687
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v3, v8, :cond_3

    sget-object v8, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v3, v8, :cond_3

    sget-object v8, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-eq v3, v8, :cond_3

    sget-object v8, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v3, v8, :cond_4

    .line 1689
    :cond_3
    iget-object v8, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const-string v10, "1"

    invoke-virtual {v8, v10}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIsFocus(Ljava/lang/String;)V

    .line 1691
    :cond_4
    iget-object v8, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->cvoEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, -0x1

    :goto_2
    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoOrientation(I)V

    move v3, v5

    move v13, v6

    move v14, v7

    goto :goto_3

    .line 1681
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_6
    move v3, v5

    move v13, v6

    move v14, v7

    .line 1694
    .end local v5    # "hasRemoteVideoCapa":Z
    .end local v6    # "width":I
    .end local v7    # "height":I
    .local v3, "hasRemoteVideoCapa":Z
    .local v13, "width":I
    .local v14, "height":I
    :goto_3
    iget-object v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v5, v13}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoWidth(I)V

    .line 1695
    iget-object v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v5, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVideoHeight(I)V

    .line 1697
    new-instance v15, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    iget-object v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v6

    iget v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    iget-object v9, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    const/4 v10, 0x0

    iget-object v12, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object v5, v15

    move v8, v4

    move v11, v3

    invoke-direct/range {v5 .. v12}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;-><init>(Lcom/sec/ims/ImsRegistration;IILcom/sec/ims/util/NameAddr;ZZLcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 1700
    .local v5, "incomingCallEvent":Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyIncomingCall() session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", callType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1704
    return-void
.end method

.method private notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V
    .locals 11
    .param p1, "call"    # Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .param p2, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    .param p3, "cs"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    .line 1588
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1589
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUssdEvent() session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipVolteHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;-><init>()V

    .line 1591
    .local v1, "ussdEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;
    iget v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setSessionID(I)V

    .line 1593
    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    .line 1595
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    if-ne p2, v3, :cond_0

    .line 1596
    new-instance v2, Lcom/sec/ims/util/SipError;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    goto/16 :goto_5

    .line 1597
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    if-ne p2, v3, :cond_8

    .line 1598
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1599
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/vnd.3gpp.ussd+xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0xb

    if-eqz v5, :cond_3

    .line 1601
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->getInstance()Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    move-result-object v5

    .line 1602
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v7

    .line 1601
    invoke-static {v5, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->access$100(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;

    move-result-object v5

    .line 1603
    .local v5, "ur":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;
    iget-object v7, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mString:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    .line 1604
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 1605
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    .line 1606
    iget-boolean v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->hasErrorCode:Z

    if-eqz v6, :cond_2

    .line 1607
    const-string v6, "BYE from NW has <error-code>"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    goto :goto_0

    .line 1611
    :cond_1
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->getVolteConstantsUssdStatus()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    .line 1617
    :cond_2
    :goto_0
    const/16 v6, 0x94

    invoke-virtual {v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setDCS(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "ur":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;
    goto :goto_1

    .line 1618
    :catch_0
    move-exception v5

    .line 1619
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "notifyCallStatus: error parsing USSD xml"

    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1620
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_4

    .line 1621
    :cond_3
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "application/ussd"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1623
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->rawContentsLength()I

    move-result v5

    .line 1624
    .local v5, "size":I
    new-array v7, v5, [B

    .line 1626
    .local v7, "buffer":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v5, :cond_4

    .line 1627
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->rawContents(I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1626
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1630
    .end local v8    # "i":I
    :cond_4
    array-length v8, v7

    .line 1632
    .local v8, "length":I
    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    add-int/lit8 v10, v8, -0x1

    aget-byte v10, v7, v10

    if-nez v10, :cond_5

    .line 1633
    const-string v10, "Remove invalid last byte (0x00)"

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    add-int/lit8 v8, v8, -0x1

    .line 1637
    :cond_5
    new-array v2, v8, [B

    .line 1638
    .local v2, "ussdData":[B
    invoke-static {v7, v4, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1639
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    .line 1640
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v10

    if-ne v10, v6, :cond_6

    .line 1641
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    goto :goto_3

    .line 1643
    :cond_6
    invoke-virtual {v1, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    .line 1645
    :goto_3
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setDCS(I)V

    .line 1649
    .end local v2    # "ussdData":[B
    .end local v5    # "size":I
    .end local v7    # "buffer":[B
    .end local v8    # "length":I
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->getData()[B

    move-result-object v2

    if-nez v2, :cond_8

    .line 1650
    new-array v2, v4, [B

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData(Ljava/lang/Object;)V

    .line 1651
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setStatus(I)V

    .line 1656
    :cond_8
    :goto_5
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCSFBbySIPErrorCode(I)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    if-eq p2, v2, :cond_9

    .line 1658
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;-><init>()V

    .line 1659
    .local v2, "ussdError":Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;
    iget v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setSessionID(I)V

    .line 1660
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    .line 1661
    new-instance v3, Lcom/sec/ims/util/SipError;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 1662
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1663
    return-void

    .line 1666
    .end local v2    # "ussdError":Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1667
    return-void
.end method

.method private onCallStateChange(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 16
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2117
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    .line 2118
    .local v3, "cs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->session()J

    move-result-wide v4

    long-to-int v4, v4

    .line 2119
    .local v4, "sessionId":I
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v5

    .line 2121
    .local v5, "state":I
    const/4 v0, 0x0

    .line 2122
    .local v0, "phoneId":I
    invoke-direct {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v6

    .line 2123
    .local v6, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-eqz v6, :cond_0

    iget-object v7, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-eqz v7, :cond_0

    .line 2124
    iget-object v7, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    move v7, v0

    goto :goto_0

    .line 2127
    :cond_0
    move v7, v0

    .end local v0    # "phoneId":I
    .local v7, "phoneId":I
    :goto_0
    invoke-static {v7}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v8

    .line 2128
    .local v8, "mno":Lcom/sec/internal/constants/Mno;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallStateChange() session: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " state: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " calltype : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2128
    const-string v9, "ResipVolteHandler"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    sget-object v0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const/16 v9, 0x12

    const/16 v10, 0xe

    const/16 v11, 0x8

    const/4 v12, 0x6

    const/16 v13, 0xb

    if-ne v8, v0, :cond_6

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v0

    if-ne v0, v12, :cond_6

    if-eq v5, v11, :cond_1

    if-eq v5, v13, :cond_1

    if-eq v5, v10, :cond_1

    if-ne v5, v9, :cond_6

    .line 2136
    :cond_1
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v15

    .line 2137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v9, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 2138
    iget-object v9, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 2139
    .local v9, "key":I
    iget-object v10, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 2140
    .local v10, "tempCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-eqz v10, :cond_2

    .line 2141
    const-string v13, "ResipVolteHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "candidate callType :  "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :cond_2
    if-eqz v10, :cond_4

    iget v11, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    const/4 v13, 0x2

    if-eq v11, v13, :cond_3

    iget v11, v10, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    if-ne v11, v12, :cond_4

    .line 2146
    :cond_3
    const-string v11, "ResipVolteHandler"

    const-string v13, "Find conference call!!"

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    move-object v6, v10

    .line 2148
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v11

    iput v11, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2149
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 2150
    goto :goto_2

    .line 2137
    .end local v9    # "key":I
    .end local v10    # "tempCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x12

    const/16 v10, 0xe

    const/16 v11, 0x8

    const/16 v13, 0xb

    goto :goto_1

    .line 2153
    .end local v0    # "i":I
    :cond_5
    :goto_2
    monitor-exit v15

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2156
    :cond_6
    :goto_3
    if-nez v6, :cond_8

    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallStateChange: unknown sessionId "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ResipVolteHandler"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_7

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v9

    const-wide/16 v11, 0x2c4

    cmp-long v0, v9, v11

    if-nez v0, :cond_7

    .line 2159
    const-string v0, "ResipVolteHandler"

    const-string v9, "onCallStateChange: notifyCallStatus if 708"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    .line 2161
    .local v0, "callStateEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    new-instance v9, Lcom/sec/ims/util/SipError;

    const/16 v10, 0x2c4

    invoke-direct {v9, v10}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 2162
    iget-object v9, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v9, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2164
    .end local v0    # "callStateEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    :cond_7
    return-void

    .line 2167
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_b

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v0

    if-eq v0, v12, :cond_9

    .line 2168
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v0

    const/4 v9, 0x5

    if-ne v0, v9, :cond_b

    :cond_9
    const/16 v0, 0x8

    if-eq v5, v0, :cond_a

    const/16 v0, 0xb

    if-eq v5, v0, :cond_a

    const/16 v0, 0xe

    if-eq v5, v0, :cond_a

    const/16 v0, 0x12

    if-ne v5, v0, :cond_b

    .line 2173
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 2176
    :cond_b
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v0

    const/16 v9, 0xc

    if-ne v0, v9, :cond_10

    .line 2177
    const/16 v0, 0x8

    if-ne v5, v0, :cond_d

    .line 2178
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->isIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2179
    const-string v0, "ResipVolteHandler"

    const-string v9, "USSD indicated from network"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v1, v6, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    goto :goto_4

    .line 2182
    :cond_c
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v1, v6, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    goto :goto_4

    .line 2184
    :cond_d
    const/16 v0, 0xb

    if-ne v5, v0, :cond_e

    .line 2185
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v1, v6, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    .line 2186
    invoke-direct {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->removeCall(I)V

    .line 2187
    return-void

    .line 2188
    :cond_e
    const/16 v0, 0x11

    if-ne v5, v0, :cond_f

    .line 2189
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v1, v6, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    goto :goto_4

    .line 2190
    :cond_f
    const/16 v0, 0x13

    if-ne v5, v0, :cond_10

    .line 2191
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-direct {v1, v6, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyUssdEvent(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    .line 2196
    :cond_10
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audioCodec="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioCodecName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " remoteMmtelCapa="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteMmtelCapa()Z

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " remoteVideoCapa="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " height="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " width="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " isFocus="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2200
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2196
    const-string v9, "ResipVolteHandler"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const/high16 v0, 0x30000000

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioCodecName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2203
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteVideoCapa()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_11

    invoke-direct {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getLocalVideoCapa(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    goto :goto_5

    :cond_11
    move v10, v11

    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->height()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->width()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->isFocus()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2201
    invoke-static {v0, v9}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 2205
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v8

    .line 2206
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->audioCodecName()Ljava/lang/String;

    move-result-object v9

    .line 2207
    .local v9, "audioCodec":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCallStateChange: audioCodec "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "ResipVolteHandler"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setisHDIcon(I)V

    .line 2212
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v8, v0, :cond_12

    sget-object v0, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_13

    :cond_12
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->remoteMmtelCapa()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2213
    const-string v0, "ResipVolteHandler"

    const-string v10, "disable HD icon by remote doesn\'t have MMTEL capability"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v11}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setisHDIcon(I)V

    .line 2217
    :cond_13
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2218
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_6

    .line 2219
    :cond_14
    const/4 v0, 0x4

    if-ne v5, v0, :cond_15

    .line 2220
    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2221
    const-string v0, "ResipVolteHandler"

    const-string v10, "KOR model need to update audio codec as NULL"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    .line 2226
    :cond_15
    :goto_6
    const/4 v0, 0x3

    if-ne v5, v0, :cond_16

    .line 2227
    invoke-direct {v1, v6, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyIncomingCall(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;)V

    .line 2228
    const-string v0, "ResipVolteHandler"

    const-string v10, "onCallStateChange: Incoming call event"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    return-void

    .line 2232
    :cond_16
    const/16 v0, 0xa

    if-ne v5, v0, :cond_17

    .line 2233
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIndicationFlag(I)V

    .line 2236
    :cond_17
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v10

    long-to-int v0, v10

    invoke-direct {v1, v5, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToVolteState(II)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    move-result-object v10

    .line 2237
    .local v10, "callState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    if-nez v10, :cond_18

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCallStateChange: unknown event "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "ResipVolteHandler"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    return-void

    .line 2242
    :cond_18
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->callType()I

    move-result v0

    iput v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2244
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->EXTEND_TO_CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    if-ne v10, v0, :cond_19

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extend to conference event "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "ResipVolteHandler"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_19
    const/4 v0, -0x1

    invoke-direct {v1, v6, v10, v3, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->notifyCallStatus(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;I)V

    .line 2250
    const/16 v0, 0xb

    if-ne v5, v0, :cond_1e

    .line 2253
    iget-boolean v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v0, :cond_1b

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v11

    long-to-int v0, v11

    const/16 v11, 0x320

    if-eq v0, v11, :cond_1a

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v11

    long-to-int v0, v11

    const/16 v11, 0x25e

    if-ne v0, v11, :cond_1b

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2254
    :cond_1a
    const-string v0, "ResipVolteHandler"

    const-string v11, "conference call error received; don\'t remove session yet."

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2255
    :cond_1b
    iget-boolean v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_1c

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v11

    long-to-int v0, v11

    if-nez v0, :cond_1c

    .line 2256
    const-string v0, "ResipVolteHandler"

    const-string v11, "conference call is ended; clear all call List"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v11, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v11

    .line 2258
    :try_start_1
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2259
    monitor-exit v11

    goto :goto_7

    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2260
    :cond_1c
    iget-boolean v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    if-eqz v0, :cond_1d

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->statusCode()J

    move-result-wide v11

    long-to-int v0, v11

    const/16 v11, 0x1e6

    if-eq v0, v11, :cond_1e

    .line 2261
    :cond_1d
    invoke-direct {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->removeCall(I)V

    .line 2264
    :cond_1e
    :goto_7
    return-void
.end method

.method private onCdpnInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2686
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2687
    .local v0, "calledParyNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2688
    return-void
.end method

.method private onCmcInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 8
    .param p1, "event"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2704
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;

    .line 2706
    .local v0, "callSendCmcInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;
    const-string v1, ""

    .line 2707
    .local v1, "contentType":Ljava/lang/String;
    const-string v2, ""

    .line 2708
    .local v2, "cmcInfoXml":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2710
    .local v3, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-eqz v0, :cond_2

    .line 2711
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v4

    .line 2712
    .local v4, "ac":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2713
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v1

    .line 2716
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2717
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v2

    .line 2719
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->handle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    .line 2722
    .end local v4    # "ac":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    :cond_2
    const-string v4, "ResipVolteHandler"

    if-nez v3, :cond_3

    .line 2723
    const-string v5, "ignore CmcInfo event UA is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    return-void

    .line 2726
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 2728
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    if-nez v5, :cond_4

    .line 2729
    const-string v6, "ignore CmcInfo event without registration"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    return-void

    .line 2733
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCmcInfoReceived: has AdditionalContents of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2734
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2733
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    const-string v6, "application/cmc-info+xml"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2737
    const-string v6, "onCmcInfoReceived: contentType mismatch!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    return-void

    .line 2742
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 2743
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$CmcInfoXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;

    move-result-object v6

    .line 2744
    .local v6, "cmcInfoEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v7, v6}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2751
    .end local v6    # "cmcInfoEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;
    :cond_6
    nop

    .line 2752
    return-void

    .line 2748
    :catch_0
    move-exception v6

    .line 2749
    .local v6, "e":Ljavax/xml/xpath/XPathExpressionException;
    const-string v7, "failed to parse cmc info xml!"

    invoke-static {v4, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2750
    return-void
.end method

.method private onConferenceUpdate(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 17
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2502
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;

    .line 2504
    .local v3, "cc":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConferenceUpdate: session "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2505
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->session()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " event "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->event()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2504
    const-string v4, "ResipVolteHandler"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const/4 v0, 0x0

    .line 2508
    .local v0, "phoneId":I
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->session()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v4

    .line 2509
    .local v4, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-eqz v5, :cond_0

    .line 2510
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    move v5, v0

    goto :goto_0

    .line 2513
    :cond_0
    move v5, v0

    .end local v0    # "phoneId":I
    .local v5, "phoneId":I
    :goto_0
    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v6, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_4

    .line 2514
    iget-object v6, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v6

    .line 2515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 2516
    iget-object v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2517
    .local v7, "key":I
    iget-object v8, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 2518
    .local v8, "tempCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-eqz v8, :cond_1

    .line 2519
    const-string v9, "ResipVolteHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tempCall.mCallType :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :cond_1
    if-eqz v8, :cond_2

    iget v9, v8, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_2

    .line 2522
    const-string v9, "ResipVolteHandler"

    const-string v10, "Find confcall!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    move-object v4, v8

    .line 2524
    goto :goto_2

    .line 2515
    .end local v7    # "key":I
    .end local v8    # "tempCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2527
    .end local v0    # "i":I
    :cond_3
    :goto_2
    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2530
    :cond_4
    :goto_3
    if-nez v4, :cond_5

    .line 2531
    const-string v0, "ResipVolteHandler"

    const-string v6, "onConferenceUpdate: session not found."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    return-void

    .line 2535
    :cond_5
    iget v0, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    .line 2536
    .local v0, "sessionId":I
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->event()I

    move-result v6

    .line 2538
    .local v6, "event":I
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    .line 2539
    .local v7, "callStateEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    iget v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-direct {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCallType(I)V

    .line 2540
    invoke-virtual {v7, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 2541
    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 2542
    iget-boolean v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setConference(Z)V

    .line 2545
    if-nez v6, :cond_9

    .line 2546
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_ADDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 2548
    .local v9, "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2549
    .local v10, "added":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 2550
    invoke-virtual {v3, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2549
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 2552
    .end local v11    # "i":I
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    .line 2553
    .local v12, "p":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onConferenceUpdate: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " added.  partid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2553
    const-string v14, "ResipVolteHandler"

    invoke-static {v14, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v13

    invoke-direct {v1, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getParticipantStatus(I)I

    move-result v13

    .line 2556
    .local v13, "participantState":I
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->sessionId()J

    move-result-wide v14

    long-to-int v14, v14

    .line 2557
    .local v14, "participantSessionId":I
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v9

    .end local v9    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .local v16, "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7, v15, v8, v14, v13}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    .line 2560
    const/4 v8, 0x2

    if-ne v13, v8, :cond_7

    .line 2561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Session ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") join to conference"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ResipVolteHandler"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_ADDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 2564
    .local v8, "participantStateEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    invoke-virtual {v8, v14}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 2565
    iget-object v9, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v9, v8}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2567
    .end local v8    # "participantStateEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    .end local v12    # "p":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;
    .end local v13    # "participantState":I
    .end local v14    # "participantSessionId":I
    :cond_7
    move-object/from16 v9, v16

    goto/16 :goto_5

    .line 2552
    .end local v16    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .restart local v9    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    :cond_8
    move-object/from16 v16, v9

    .line 2568
    .end local v9    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .end local v10    # "added":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;>;"
    .restart local v16    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    goto/16 :goto_a

    .end local v16    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    :cond_9
    const/4 v8, 0x1

    if-ne v6, v8, :cond_c

    .line 2569
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_REMOVED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 2571
    .restart local v9    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2572
    .local v8, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 2573
    invoke-virtual {v3, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2572
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2575
    .end local v10    # "i":I
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    .line 2576
    .local v11, "p":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onConferenceUpdate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " removed."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ResipVolteHandler"

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v13

    long-to-int v13, v13

    .line 2578
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->sessionId()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v15

    invoke-direct {v1, v15}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getParticipantStatus(I)I

    move-result v15

    .line 2577
    invoke-virtual {v7, v12, v13, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    .line 2579
    .end local v11    # "p":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;
    goto :goto_7

    .line 2580
    .end local v8    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;>;"
    :cond_b
    goto/16 :goto_a

    .end local v9    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    :cond_c
    const/4 v8, 0x2

    if-ne v6, v8, :cond_f

    .line 2581
    const-string v8, "ResipVolteHandler"

    const-string v9, "onConferenceUpdate: CONF_PARTICIPANT_UPDATED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->CONFERENCE_PARTICIPANTS_UPDATED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 2584
    .restart local v9    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2585
    .local v8, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;>;"
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v11

    if-ge v10, v11, :cond_d

    .line 2586
    invoke-virtual {v3, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2585
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 2588
    .end local v10    # "i":I
    :cond_d
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    .line 2589
    .restart local v11    # "p":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;
    new-instance v12, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v13

    const-string v14, ""

    invoke-direct {v12, v14, v13}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    invoke-virtual {v7, v12}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setPeerAddr(Lcom/sec/ims/util/NameAddr;)V

    .line 2590
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v13

    long-to-int v13, v13

    .line 2591
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->sessionId()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v15

    invoke-direct {v1, v15}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getParticipantStatus(I)I

    move-result v15

    .line 2590
    invoke-virtual {v7, v12, v13, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->addUpdatedParticipantsList(Ljava/lang/String;III)V

    .line 2592
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onConferenceUpdate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " update id . "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->participantid()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2592
    const-string v13, "ResipVolteHandler"

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    .end local v11    # "p":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;
    goto :goto_9

    .line 2595
    .end local v8    # "updated":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;>;"
    :cond_e
    nop

    .line 2599
    :goto_a
    invoke-virtual {v7, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 2600
    iget-object v8, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v8, v7}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2601
    return-void

    .line 2596
    .end local v9    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    :cond_f
    const-string v8, "ResipVolteHandler"

    const-string v9, "onConferenceUpdate: unknown event. ignore."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    return-void
.end method

.method private onDedicatedBearerEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2447
    const-string v0, "ResipVolteHandler"

    const-string v1, "onDedicatedBearerEventReceived:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;

    .line 2450
    .local v0, "notiInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    .line 2451
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;->bearerState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertDedicatedBearerState(I)I

    move-result v2

    .line 2452
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;->qci()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;->session()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;-><init>(III)V

    .line 2453
    .local v1, "event":Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2454
    return-void
.end method

.method private onDialogEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 8
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2626
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;

    .line 2627
    .local v0, "de":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;
    const-string v1, ""

    .line 2628
    .local v1, "contentType":Ljava/lang/String;
    const-string v2, ""

    .line 2629
    .local v2, "dialogXml":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2631
    .local v3, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-eqz v0, :cond_2

    .line 2632
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;->additionalContents()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v4

    .line 2633
    .local v4, "ac":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2634
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v1

    .line 2637
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2638
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v2

    .line 2641
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;->handle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    .line 2644
    .end local v4    # "ac":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    :cond_2
    const-string v4, "ResipVolteHandler"

    if-nez v3, :cond_3

    .line 2645
    const-string v5, "ignore dialog event UA is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    return-void

    .line 2649
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 2651
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    if-nez v5, :cond_4

    .line 2652
    const-string v6, "ignore dialog event without registration"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    return-void

    .line 2656
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDialogEventReceived: has AdditionalContents of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2656
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    const-string v6, "application/dialog-info+xml"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2660
    const-string v6, "onDialogEventReceived: contentType mismatch!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    return-void

    .line 2666
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    .line 2667
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    .line 2668
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    goto :goto_0

    .line 2672
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->getInstance()Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->parseDialogInfoXml(Ljava/lang/String;)Lcom/sec/ims/DialogEvent;

    move-result-object v4

    .local v4, "deParsed":Lcom/sec/ims/DialogEvent;
    goto :goto_1

    .line 2669
    .end local v4    # "deParsed":Lcom/sec/ims/DialogEvent;
    :cond_7
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->getInstance()Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    move-result-object v6

    .line 2670
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v7

    .line 2669
    invoke-virtual {v6, v2, v7}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->parseDialogInfoXml(Ljava/lang/String;I)Lcom/sec/ims/DialogEvent;

    move-result-object v4
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2677
    .restart local v4    # "deParsed":Lcom/sec/ims/DialogEvent;
    :goto_1
    nop

    .line 2679
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    .line 2680
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    .line 2682
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v6, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2683
    return-void

    .line 2674
    .end local v4    # "deParsed":Lcom/sec/ims/DialogEvent;
    :catch_0
    move-exception v6

    .line 2675
    .local v6, "e":Ljavax/xml/xpath/XPathExpressionException;
    const-string v7, "failed to parse dialog xml!"

    invoke-static {v4, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2676
    return-void
.end method

.method private onDtmfInfo(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 7
    .param p1, "event"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2691
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;

    .line 2692
    .local v0, "dtmfEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->event()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->volume()J

    move-result-wide v3

    long-to-int v3, v3

    .line 2693
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->duration()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->endbit()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;-><init>(IIII)V

    .line 2694
    .local v1, "dtmfInfo":Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2695
    return-void
.end method

.method private onHoldResumeResponse(Lcom/sec/internal/helper/AsyncResult;Z)V
    .locals 6
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;
    .param p2, "isHold"    # Z

    .line 2062
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2064
    .local v0, "cr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->session()I

    move-result v1

    .line 2065
    .local v1, "sessionId":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v2

    .line 2066
    .local v2, "success":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v3

    .line 2068
    .local v3, "reason":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHoldResumeResponse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v5, "hold"

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "resume"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " success="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResipVolteHandler"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    return-void
.end method

.method private onInfoResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2094
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;-><init>()V

    .line 2095
    .local v0, "ussdRsp":Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;
    iget-object v1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 2096
    .local v1, "gr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v2

    .line 2098
    .local v2, "success":I
    if-nez v2, :cond_0

    .line 2099
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    goto :goto_0

    .line 2101
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V

    .line 2104
    :goto_0
    new-instance v3, Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->sipError()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->errorStr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setErrorCode(Lcom/sec/ims/util/SipError;)V

    .line 2105
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2106
    return-void
.end method

.method private onMakeCallResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 9
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2031
    const-string v0, "ResipVolteHandler"

    const-string v1, "onMakeCallResponse:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2035
    .local v1, "cr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->session()I

    move-result v2

    .line 2036
    .local v2, "sessionId":I
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v3

    .line 2037
    .local v3, "success":I
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v4

    .line 2039
    .local v4, "reason":I
    iget-object v5, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    .line 2041
    .local v5, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMakeCallResponse: nameAddr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2042
    invoke-static {v7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " session="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " success="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2041
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iput v2, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    .line 2047
    iput-object v1, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2049
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->sipCallId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->sipCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipCallId(Ljava/lang/String;)V

    .line 2052
    :cond_0
    const/4 v0, 0x1

    if-ne v3, v0, :cond_1

    .line 2053
    iget-object v0, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopCamera()V

    goto :goto_0

    .line 2055
    :cond_1
    invoke-direct {p0, v2, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->addCall(ILcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)V

    .line 2058
    :goto_0
    iget-object v0, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2059
    return-void
.end method

.method private onModifyCall(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 12
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2267
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;

    .line 2268
    .local v0, "modifyData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->session()J

    move-result-wide v1

    long-to-int v1, v1

    .line 2269
    .local v1, "sessionId":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->oldType()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2270
    .local v2, "oldCallType":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->newType()J

    move-result-wide v3

    long-to-int v3, v3

    .line 2271
    .local v3, "newCallType":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->isSdToSdPull()Z

    move-result v4

    .line 2273
    .local v4, "isSdToSdPull":Z
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v5

    .line 2274
    .local v5, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    const-string v6, "ResipVolteHandler"

    if-nez v5, :cond_0

    .line 2275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onModifyCall: unknown sessionId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    return-void

    .line 2279
    :cond_0
    iget-object v7, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    .line 2281
    .local v7, "mno":Lcom/sec/internal/constants/Mno;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onModifyCall() session: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", oldCallType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", newCallType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", isSdToSdPull: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    invoke-static {v2, v3}, Lcom/sec/internal/helper/ImsCallUtil;->isUpgradeCall(II)Z

    move-result v8

    const/16 v9, 0x25b

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    iget-object v10, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 2285
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v10

    aget v8, v8, v10

    sget v10, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    if-eq v8, v10, :cond_1

    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    iget-object v10, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 2287
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v10

    aget v8, v8, v10

    sget v10, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v8, v10, :cond_2

    :cond_1
    const/16 v8, 0x9

    .line 2289
    invoke-direct {p0, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCall(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2292
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rejecting modify request since TTY call("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    iget-object v11, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v11

    aget v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") exists"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    invoke-virtual {p0, v1, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->rejectModifyCallType(II)I

    .line 2295
    return-void

    .line 2298
    :cond_3
    sget-object v8, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_4

    const/4 v8, 0x1

    if-ne v2, v8, :cond_4

    const/4 v8, 0x3

    if-ne v3, v8, :cond_4

    .line 2300
    const-string v8, "onModifyCall: ATT - RX upgrade to videoshare with recvonly -> automatically reject with audio only 200 OK"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    invoke-virtual {p0, v1, v2, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->replyModifyCallType(IIII)I

    .line 2306
    return-void

    .line 2309
    :cond_4
    sget-object v8, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_5

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isOneWayVideoCall(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2310
    const-string v8, "onModifyCall: RJIL - network does not support 1-way videoreject with 603"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    invoke-virtual {p0, v1, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->rejectModifyCallType(II)I

    .line 2316
    return-void

    .line 2319
    :cond_5
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeBackward(I)I

    move-result v6

    iput v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2321
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-direct {v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>()V

    .line 2322
    .local v6, "callStateEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->MODIFY_REQUESTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    .line 2323
    invoke-virtual {v6, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCallType(I)V

    .line 2324
    invoke-virtual {v6, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setSessionID(I)V

    .line 2325
    invoke-virtual {v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setIsSdToSdPull(Z)V

    .line 2326
    iget-object v8, v5, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v6, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 2327
    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v8, v6}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2328
    return-void
.end method

.method private onNewIncomingCall(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 17
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2332
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;

    .line 2333
    .local v2, "nc":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;
    const/4 v3, 0x0

    .line 2334
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->handle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v4

    .line 2336
    .local v4, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const-string v5, "ResipVolteHandler"

    if-nez v4, :cond_0

    .line 2337
    const-string v6, "onNewIncomingCall: UserAgent not found."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    return-void

    .line 2341
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->peeruri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2342
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->peeruri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 2345
    :cond_1
    new-instance v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    new-instance v7, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->displayName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    invoke-direct {v6, v4, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V

    .line 2346
    .local v6, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->session()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    .line 2347
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->callType()I

    move-result v7

    iput v7, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2349
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    .line 2350
    .local v7, "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAsIncomingCall()V

    .line 2352
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->referredBy()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2353
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->referredBy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setReferredBy(Ljava/lang/String;)V

    .line 2355
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->sipCallId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2356
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->sipCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipCallId(Ljava/lang/String;)V

    .line 2358
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->rawSipmsg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2359
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->rawSipmsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipInviteMsg(Ljava/lang/String;)V

    .line 2361
    :cond_4
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->terminatingId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2362
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->terminatingId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setTerminatingId(Lcom/sec/ims/util/ImsUri;)V

    .line 2364
    :cond_5
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->numberPlus()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 2365
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->numberPlus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setNumberPlus(Ljava/lang/String;)V

    .line 2367
    :cond_6
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->replaces()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 2368
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->replaces()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setReplaces(Ljava/lang/String;)V

    .line 2370
    :cond_7
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->photoRing()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 2371
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->photoRing()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setPhotoRing(Ljava/lang/String;)V

    .line 2373
    :cond_8
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->alertInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 2374
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->alertInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAlertInfo(Ljava/lang/String;)V

    .line 2376
    :cond_9
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->historyInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 2377
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->historyInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setHistoryInfo(Ljava/lang/String;)V

    .line 2380
    :cond_a
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->verstat()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 2381
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->verstat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setVerstat(Ljava/lang/String;)V

    .line 2383
    :cond_b
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->cmcDeviceId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 2384
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->cmcDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setCmcDeviceId(Ljava/lang/String;)V

    .line 2387
    :cond_c
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->composerData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 2388
    const-string v8, "onNewIncomingCall: has composer data"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->composerData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;

    move-result-object v8

    .line 2390
    .local v8, "cd":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2391
    .local v9, "cBundle":Landroid/os/Bundle;
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->image()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 2392
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->image()Ljava/lang/String;

    move-result-object v10

    const-string v11, "image"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    :cond_d
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->subject()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 2396
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->subject()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "subject"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    :cond_e
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->latitude()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 2400
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->latitude()Ljava/lang/String;

    move-result-object v10

    const-string v11, "latitude"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    :cond_f
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->longitude()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 2404
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->longitude()Ljava/lang/String;

    move-result-object v10

    const-string v11, "longitude"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    :cond_10
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->radius()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 2408
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->radius()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "radius"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    :cond_11
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->importance()Z

    move-result v10

    const-string v11, "importance"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2411
    invoke-virtual {v7, v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setComposerData(Landroid/os/Bundle;)V

    .line 2414
    .end local v8    # "cd":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;
    .end local v9    # "cBundle":Landroid/os/Bundle;
    :cond_12
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;->hasDiversion()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setHasDiversion(Z)V

    .line 2416
    iput-object v7, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 2418
    iget v8, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-direct {v0, v8, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->addCall(ILcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;)V

    .line 2419
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onNewIncomingCall: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " peer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2420
    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2419
    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    new-instance v8, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v10

    iget v11, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    iget v9, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 2423
    invoke-direct {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v12

    iget-object v13, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v9, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-object/from16 v16, v9

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;-><init>(Lcom/sec/ims/ImsRegistration;IILcom/sec/ims/util/NameAddr;ZZLcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 2426
    .local v8, "incomingCallEvent":Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyIncomingCall() pre Alerting session: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", callType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v8}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2431
    return-void
.end method

.method private onReferReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2604
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;

    .line 2607
    .local v0, "rr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;->handle()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 2608
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_0

    .line 2609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReferReceived: unknown handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;->handle()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipVolteHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    return-void

    .line 2613
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;->session()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->acceptCallTranfer(IZILjava/lang/String;)V

    .line 2614
    return-void
.end method

.method private onReferStatus(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 6
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2617
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;

    .line 2619
    .local v0, "rr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReferStatus: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2620
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->session()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " respCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->statusCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2619
    const-string v2, "ResipVolteHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->session()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->statusCode()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2623
    return-void
.end method

.method private onRrcConnectionEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 4
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2467
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "onRrcConnectionEventReceived:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    .line 2471
    .local v0, "rrcEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;->event()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2472
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->REJECTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2474
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;->event()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2475
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2478
    :cond_1
    :goto_0
    return-void
.end method

.method private onRtpLossRateNoti(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 7
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2458
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "onRtpLossRateNoti:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;

    .line 2461
    .local v0, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->interval()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2462
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->lossrate()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->jitter()F

    move-result v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;->notification()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;-><init>(IFFI)V

    .line 2463
    .local v1, "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2464
    return-void
.end method

.method private onTextInfo(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2698
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;

    .line 2699
    .local v0, "textEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->len()J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;-><init>(ILjava/lang/String;I)V

    .line 2700
    .local v1, "texInfo":Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2701
    return-void
.end method

.method private onUpdateAudioInterfaceResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 2110
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "onUpdateAudioInterfaceResponse:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 2113
    .local v0, "lock":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2114
    return-void
.end method

.method private removeCall(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .line 2889
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2890
    :try_start_0
    const-string v1, "ResipVolteHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove Call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2892
    monitor-exit v0

    .line 2893
    return-void

    .line 2892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendSIPMSGInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 5
    .param p1, "noti"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 3051
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    .line 3052
    .local v0, "sip":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->sipMessage()Ljava/lang/String;

    move-result-object v1

    .line 3053
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3055
    :cond_0
    const/4 v2, 0x0

    .line 3056
    .local v2, "isRequest":Z
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v3

    if-nez v3, :cond_1

    .line 3057
    const/4 v2, 0x1

    .line 3059
    :cond_1
    new-instance v3, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;

    invoke-direct {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;-><init>(Ljava/lang/String;Z)V

    .line 3060
    .local v3, "curSip":Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3061
    return-void
.end method

.method private startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)I
    .locals 23
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "confUri"    # Ljava/lang/String;
    .param p3, "origUri"    # Ljava/lang/String;
    .param p4, "session1"    # I
    .param p5, "session2"    # I
    .param p6, "callType"    # I
    .param p7, "confSubscribe"    # Ljava/lang/String;
    .param p8, "subscribeDialogType"    # Ljava/lang/String;
    .param p9, "referUriType"    # Ljava/lang/String;
    .param p10, "removeReferUriType"    # Ljava/lang/String;
    .param p11, "referUriAsserted"    # Ljava/lang/String;
    .param p12, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p13, "supportPrematureEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 982
    .local p14, "extraHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v15, p4

    invoke-direct {v1, v15}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v17

    .line 983
    .local v17, "fgCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    move/from16 v14, p5

    invoke-direct {v1, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v18

    .line 985
    .local v18, "bgCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    const/16 v19, -0x1

    if-eqz v17, :cond_3

    if-nez v18, :cond_0

    goto/16 :goto_1

    .line 989
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    invoke-static/range {p2 .. p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v3, ""

    move-object/from16 v13, p1

    invoke-direct {v0, v13, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    move-object v12, v0

    .line 990
    .local v12, "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    move/from16 v11, p6

    invoke-direct {v1, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v10

    .line 991
    .local v10, "type":I
    iput v10, v12, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 992
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 993
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    move-object v9, v2

    .line 995
    .local v9, "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    iput-object v9, v12, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 996
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v8, v2

    .line 997
    .local v8, "lock":Ljava/util/concurrent/CountDownLatch;
    iput-object v8, v12, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 999
    const/4 v0, 0x3

    .line 1001
    invoke-virtual {v1, v0, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 999
    move-object/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p2

    move v6, v10

    move-object/from16 v7, p7

    move-object v1, v8

    .end local v8    # "lock":Ljava/util/concurrent/CountDownLatch;
    .local v1, "lock":Ljava/util/concurrent/CountDownLatch;
    move-object/from16 v8, p8

    move-object/from16 v20, v9

    .end local v9    # "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    .local v20, "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    move-object/from16 v9, p3

    move/from16 v21, v10

    .end local v10    # "type":I
    .local v21, "type":I
    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v22, v12

    .end local v12    # "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .local v22, "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    invoke-virtual/range {v2 .. v16}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mergeCall(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V

    .line 1003
    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "ResipVolteHandler"

    if-nez v0, :cond_1

    .line 1004
    :try_start_1
    const-string/jumbo v0, "startNWayConferenceCall: timeout."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1005
    return v19

    .line 1007
    :catch_0
    move-exception v0

    move-object/from16 v3, v22

    goto :goto_0

    .line 1009
    :cond_1
    nop

    .line 1011
    move-object/from16 v3, v22

    .end local v22    # "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .local v3, "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 1012
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNWayConferenceCall: call failed. reason "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 1015
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return v19

    .line 1019
    :cond_2
    iget v0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return v0

    .line 1007
    .end local v3    # "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .restart local v22    # "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    :catch_1
    move-exception v0

    move-object/from16 v3, v22

    .line 1008
    .end local v22    # "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v3    # "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    :goto_0
    return v19

    .line 986
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "lock":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .end local v20    # "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    .end local v21    # "type":I
    :cond_3
    :goto_1
    return v19
.end method

.method private startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 20
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "confUri"    # Ljava/lang/String;
    .param p3, "origUri"    # Ljava/lang/String;
    .param p5, "callType"    # I
    .param p6, "confSubscribe"    # Ljava/lang/String;
    .param p7, "subscribeDialogType"    # Ljava/lang/String;
    .param p8, "referUriType"    # Ljava/lang/String;
    .param p9, "removeReferUriType"    # Ljava/lang/String;
    .param p10, "referUriAsserted"    # Ljava/lang/String;
    .param p11, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p12, "supportPrematureEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .line 1029
    .local p4, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    invoke-static/range {p2 .. p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v3, ""

    move-object/from16 v15, p1

    invoke-direct {v0, v15, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    move-object v2, v0

    .line 1030
    .local v2, "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    move/from16 v3, p5

    invoke-direct {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v14

    .line 1031
    .local v14, "type":I
    iput v14, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 1033
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    move-object v13, v4

    .line 1035
    .local v13, "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    iput-object v13, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 1036
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v12, v4

    .line 1037
    .local v12, "lock":Ljava/util/concurrent/CountDownLatch;
    iput-object v12, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 1038
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v11, p4

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    .line 1039
    .local v17, "list":[Ljava/lang/String;
    nop

    .line 1041
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 1039
    move-object/from16 v4, p1

    move-object/from16 v5, v17

    move-object/from16 v6, p2

    move v7, v14

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p3

    move-object/from16 v11, p8

    move-object v1, v12

    .end local v12    # "lock":Ljava/util/concurrent/CountDownLatch;
    .local v1, "lock":Ljava/util/concurrent/CountDownLatch;
    move-object/from16 v12, p9

    move-object/from16 v18, v13

    .end local v13    # "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    .local v18, "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    move-object/from16 v13, p10

    move/from16 v19, v14

    .end local v14    # "type":I
    .local v19, "type":I
    move-object/from16 v14, p11

    move/from16 v15, p12

    invoke-virtual/range {v4 .. v16}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->conference([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    .line 1043
    const-wide/16 v4, 0x7530

    const/4 v6, -0x1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "ResipVolteHandler"

    if-nez v0, :cond_0

    .line 1044
    :try_start_1
    const-string/jumbo v0, "startNWayConferenceCall: timeout."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1045
    return v6

    .line 1049
    :cond_0
    nop

    .line 1051
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 1052
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startNWayConferenceCall: call failed. reason "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 1055
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return v6

    .line 1059
    :cond_1
    iget v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return v0

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/lang/InterruptedException;
    return v6
.end method


# virtual methods
.method public DeleteTcpSocket(II)I
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "callType"    # I

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteTcpSocket: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 770
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 771
    const-string v2, "DeleteTcpSocket: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v1, -0x1

    return v1

    .line 775
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 776
    const/4 v1, 0x0

    return v1
.end method

.method public addParticipantToNWayConferenceCall(II)I
    .locals 4
    .param p1, "confCallSessionId"    # I
    .param p2, "participantId"    # I

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addParticipantToNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") participantId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1068
    .local v0, "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 1069
    const-string v2, "No conference session to add a participant"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 v1, -0x1

    return v1

    .line 1073
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v1, p1, v2, p2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    .line 1074
    return v2
.end method

.method public addParticipantToNWayConferenceCall(ILjava/lang/String;)I
    .locals 4
    .param p1, "confCallSessionId"    # I
    .param p2, "participant"    # Ljava/lang/String;

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addParticipantToNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") participant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1098
    .local v0, "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 1099
    const-string v3, "No conference session to add a participant"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return v2

    .line 1103
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    .line 1104
    return v3
.end method

.method public addUserForConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;Z)I
    .locals 22
    .param p1, "sessionId"    # I
    .param p2, "data"    # Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;
    .param p3, "create"    # Z

    .line 1220
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserForConferenceCall: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " create "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p3

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ResipVolteHandler"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v2

    .line 1224
    .local v2, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    const/4 v5, -0x1

    if-nez v2, :cond_0

    .line 1225
    const-string v6, "addUserForConferenceCall: session not found."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    return v5

    .line 1228
    :cond_0
    const/4 v4, 0x0

    .line 1229
    .local v4, "origUri":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1230
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_0

    .line 1229
    :cond_1
    move-object/from16 v17, v4

    .line 1232
    .end local v4    # "origUri":Ljava/lang/String;
    .local v17, "origUri":Ljava/lang/String;
    :goto_0
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->checkConfererenceCallData(Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 1233
    return v5

    .line 1235
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSupportPrematureEnd()Z

    move-result v18

    .line 1236
    .local v18, "supportPrematureEnd":Z
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getCallType()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v19

    .line 1237
    .local v19, "type":I
    iget-object v14, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1238
    .local v14, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    nop

    .line 1239
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object v6

    .line 1240
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object v12

    .line 1241
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object v20

    .line 1238
    move-object v4, v14

    move/from16 v7, v19

    move/from16 v10, p1

    move-object/from16 v11, v17

    move-object/from16 v21, v14

    .end local v14    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v21, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    move-object/from16 v14, v16

    move-object/from16 v15, v20

    move/from16 v16, v18

    invoke-virtual/range {v4 .. v16}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extendToConfCall([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1242
    const/4 v4, 0x0

    return v4
.end method

.method public answerCallWithCallType(II)I
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "callType"    # I

    .line 845
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v0

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->answerCall(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public answerCallWithCallType(IILjava/lang/String;)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "callType"    # I
    .param p3, "cmcCallTime"    # Ljava/lang/String;

    .line 850
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->answerCall(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public cancelTransferCall(I)I
    .locals 4
    .param p1, "sessionId"    # I

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTransferCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1265
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 1266
    const-string v2, "cancelTransferCall: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/4 v1, -0x1

    return v1

    .line 1270
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->cancelTransferCall(ILandroid/os/Message;)V

    .line 1271
    const/4 v1, 0x0

    return v1
.end method

.method public clearAllCallInternal(I)V
    .locals 1
    .param p1, "cmcType"    # I

    .line 1544
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->clearAllCallInternal(I)V

    .line 1545
    return-void
.end method

.method public endCall(IILcom/sec/internal/constants/ims/SipReason;)I
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "callType"    # I
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/SipReason;

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 785
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 786
    const-string v2, "endCall: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v1, -0x1

    return v1

    .line 789
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 790
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    if-eqz p3, :cond_a

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endCall: reason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v3

    const-string v4, "deleteTcpClientSocket() at INVITE FLUSH"

    const-string v5, "INVITE FLUSH"

    const-string v6, "RRC CONNECTION REJECT"

    const-string v7, "deleteTcpClientSocket()"

    if-eqz v3, :cond_4

    .line 793
    sget-object v3, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v8, "PS BARRING"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 794
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 795
    :cond_1
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 798
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_a

    :cond_3
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 799
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto/16 :goto_1

    .line 802
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    .line 803
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SRVCC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 804
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto :goto_1

    .line 807
    :cond_5
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_7

    .line 808
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TIMER VZW EXPIRED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 809
    :cond_6
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto :goto_1

    .line 812
    :cond_7
    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_9

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_9

    sget-object v3, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_8

    goto :goto_0

    .line 817
    :cond_8
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 818
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 819
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    goto :goto_1

    .line 813
    :cond_9
    :goto_0
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SESSIONPROGRESS TIMEOUT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 814
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deleteTcpClientSocket()V

    .line 824
    :cond_a
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v3, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->endCall(ILcom/sec/internal/constants/ims/SipReason;)V

    .line 825
    const/4 v1, 0x0

    return v1
.end method

.method protected getEmergencyUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1578
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 1579
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method protected getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "handle"    # I

    .line 1583
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 1584
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method protected getUa(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "cmcType"    # I

    .line 1552
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 1555
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    .line 1556
    .local v1, "uaList":[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1557
    return-object v3

    .line 1560
    :cond_0
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 1561
    .local v5, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    if-nez v5, :cond_1

    .line 1562
    goto :goto_1

    .line 1565
    :cond_1
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    if-ne v6, p3, :cond_2

    .line 1566
    move-object v2, v5

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v2

    .line 1560
    .end local v5    # "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1569
    :cond_3
    return-object v3
.end method

.method protected getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "regId"    # I

    .line 1573
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 1574
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method public handleCmcCsfb(I)I
    .locals 3
    .param p1, "sessionId"    # I

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCmcCsfb(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1511
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 1512
    const-string v2, "handleCmcCsfb(): session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const/4 v1, -0x1

    return v1

    .line 1515
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->handleCmcCsfb(I)V

    .line 1516
    const/4 v1, 0x0

    return v1
.end method

.method public handleDtmf(IIIILandroid/os/Message;)I
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "code"    # I
    .param p3, "mode"    # I
    .param p4, "operation"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmf: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 898
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 899
    const-string/jumbo v2, "sendDtmf: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v1, -0x1

    return v1

    .line 903
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->handleDtmf(IIIILandroid/os/Message;)V

    .line 904
    const/4 v1, 0x0

    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 3045
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onCmcInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_0

    .line 3041
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->sendSIPMSGInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 3042
    goto/16 :goto_0

    .line 3013
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onTextInfo(Lcom/sec/internal/helper/AsyncResult;)V

    .line 3014
    goto/16 :goto_0

    .line 3009
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onDtmfInfo(Lcom/sec/internal/helper/AsyncResult;)V

    .line 3010
    goto/16 :goto_0

    .line 3001
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onRrcConnectionEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    .line 3002
    goto/16 :goto_0

    .line 2997
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onDedicatedBearerEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    .line 2998
    goto/16 :goto_0

    .line 3037
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onRtpLossRateNoti(Lcom/sec/internal/helper/AsyncResult;)V

    .line 3038
    goto/16 :goto_0

    .line 3005
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onCdpnInfoReceived(Lcom/sec/internal/helper/AsyncResult;)V

    .line 3006
    goto :goto_0

    .line 2985
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onModifyCall(Lcom/sec/internal/helper/AsyncResult;)V

    .line 2986
    goto :goto_0

    .line 3029
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onDialogEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    .line 3030
    goto :goto_0

    .line 3025
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onReferStatus(Lcom/sec/internal/helper/AsyncResult;)V

    .line 3026
    goto :goto_0

    .line 3021
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onReferReceived(Lcom/sec/internal/helper/AsyncResult;)V

    .line 3022
    goto :goto_0

    .line 3017
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onConferenceUpdate(Lcom/sec/internal/helper/AsyncResult;)V

    .line 3018
    goto :goto_0

    .line 2993
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onNewIncomingCall(Lcom/sec/internal/helper/AsyncResult;)V

    .line 2994
    goto :goto_0

    .line 2981
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onCallStateChange(Lcom/sec/internal/helper/AsyncResult;)V

    .line 2982
    goto :goto_0

    .line 3033
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onInfoResponse(Lcom/sec/internal/helper/AsyncResult;)V

    .line 3034
    goto :goto_0

    .line 2977
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onHoldResumeResponse(Lcom/sec/internal/helper/AsyncResult;Z)V

    .line 2978
    goto :goto_0

    .line 2973
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onHoldResumeResponse(Lcom/sec/internal/helper/AsyncResult;Z)V

    .line 2974
    goto :goto_0

    .line 2989
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2990
    goto :goto_0

    .line 2966
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->onMakeCallResponse(Lcom/sec/internal/helper/AsyncResult;)V

    .line 2967
    nop

    .line 3048
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public holdCall(I)I
    .locals 5
    .param p1, "sessionId"    # I

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 912
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 913
    const-string v2, "holdCall: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->dumpCall()V

    .line 915
    const/4 v1, -0x1

    return v1

    .line 919
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIndicationFlag(I)V

    .line 920
    const v1, 0x30000003

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HoldCall,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 921
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->holdCall(ILandroid/os/Message;)V

    .line 922
    return v2
.end method

.method public init()V
    .locals 3

    .line 362
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/VolteHandler;->init()V

    .line 363
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 365
    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerNewIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCallStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6a

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerModifyCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerConferenceUpdateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x67

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerReferReceivedEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x68

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerReferStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x69

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6b

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6e

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerDedicatedBearerEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6f

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6c

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x70

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x71

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x72

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x73

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCmcInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 381
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 382
    .local v0, "phoneCount":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    .line 383
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    .line 384
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    .line 385
    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 386
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 387
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 389
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AudioInterfaceThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceThread:Landroid/os/HandlerThread;

    .line 390
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 391
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    .line 392
    return-void
.end method

.method public makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I
    .locals 33
    .param p1, "regId"    # I
    .param p2, "data"    # Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 659
    .local p3, "additionalSipHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeCall: regId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " additionalSipHeaders="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "ResipVolteHandler"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDestinationUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    .line 663
    .local v12, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCallType()I

    move-result v11

    .line 665
    .local v11, "type":I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->isEmergency()Z

    move-result v23

    .line 666
    .local v23, "isEmergency":Z
    const/4 v6, 0x1

    const/16 v7, 0xc

    if-ne v11, v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move/from16 v24, v7

    .line 668
    .local v24, "isUssd":Z
    const/4 v7, 0x0

    .line 670
    .local v7, "origUri":Ljava/lang/String;
    if-eqz v23, :cond_1

    if-gez v2, :cond_1

    .line 671
    const-string v8, "makeCall: using emergency UA."

    invoke-static {v15, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getEmergencyUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v8

    move-object v10, v8

    .local v8, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    goto :goto_1

    .line 674
    .end local v8    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v8

    move-object v10, v8

    .line 677
    .local v10, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :goto_1
    const/16 v25, -0x1

    if-nez v10, :cond_2

    .line 678
    const-string v0, "makeCall: UserAgent not found."

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return v25

    .line 682
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 683
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v26, v7

    goto :goto_2

    .line 682
    :cond_3
    move-object/from16 v26, v7

    .line 686
    .end local v7    # "origUri":Ljava/lang/String;
    .local v26, "origUri":Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v9, v7

    .line 687
    .local v9, "lock":Ljava/util/concurrent/CountDownLatch;
    new-instance v7, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v10, v12, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    move-object v8, v7

    .line 688
    .local v8, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    invoke-direct {v1, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v7

    iput v7, v8, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 689
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v7}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    .line 691
    .local v7, "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v14

    .line 692
    .local v14, "audioCodec":Ljava/lang/String;
    iget-object v13, v8, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v13

    .line 694
    .local v13, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v6, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v13, v6, :cond_4

    sget-object v6, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v13, v6, :cond_9

    :cond_4
    const-string v6, "EVS"

    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 695
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthSend()Ljava/lang/String;

    move-result-object v6

    .line 696
    .local v6, "send_evs_bandwidth":Ljava/lang/String;
    const-string v0, "fb"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 697
    const-string v0, "EVS-FB"

    invoke-virtual {v7, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_3

    .line 698
    :cond_5
    const-string/jumbo v0, "swb"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 699
    const-string v0, "EVS-SWB"

    invoke-virtual {v7, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_3

    .line 700
    :cond_6
    const-string/jumbo v0, "wb"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 701
    const-string v0, "EVS-WB"

    invoke-virtual {v7, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_3

    .line 702
    :cond_7
    const-string v0, "nb"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 703
    const-string v0, "EVS-NB"

    invoke-virtual {v7, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    .line 705
    .end local v6    # "send_evs_bandwidth":Ljava/lang/String;
    :cond_8
    :goto_3
    goto :goto_5

    :cond_9
    const-string v0, "AMR-WB"

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "AMRBE-WB"

    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_4

    .line 708
    :cond_a
    const-string v0, "AMR-NB"

    invoke-virtual {v7, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    goto :goto_5

    .line 706
    :cond_b
    :goto_4
    invoke-virtual {v7, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    .line 711
    :goto_5
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSupportClir()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCli()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    move-object/from16 v27, v13

    .end local v13    # "mno":Lcom/sec/internal/constants/Mno;
    .local v27, "mno":Lcom/sec/internal/constants/Mno;
    move-object v13, v0

    .line 712
    .local v13, "cli":Ljava/lang/String;
    iput-object v7, v8, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 713
    iput-object v9, v8, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeCall: Do device support 3gpp 24.390 USSI?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getSupport3gppUssi()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-eqz v24, :cond_d

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSupport3gppUssi()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    move/from16 v28, v0

    .line 719
    .local v28, "is24390Ussd":Z
    invoke-virtual {v12}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    iget v6, v8, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getLetteringText()Ljava/lang/String;

    move-result-object v29

    .line 720
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDialingNumber()Ljava/lang/String;

    move-result-object v30

    .line 721
    if-eqz v28, :cond_e

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getDialingNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->createUssdContents(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v2

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    .line 722
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getPEmergencyInfoOfAtt()Ljava/lang/String;

    move-result-object v4

    move-object v5, v14

    .end local v14    # "audioCodec":Ljava/lang/String;
    .local v5, "audioCodec":Ljava/lang/String;
    move-object v14, v4

    .line 723
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getAlertInfo()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getLteEpsOnlyAttached()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getP2p()Ljava/util/List;

    move-result-object v18

    .line 724
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getCmcBoundSessionId()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getComposerData()Landroid/os/Bundle;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getReplaceCallId()Ljava/lang/String;

    move-result-object v21

    .line 725
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    .line 719
    move v4, v6

    move-object v6, v10

    move-object/from16 v31, v7

    .end local v7    # "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    .local v31, "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    move-object v7, v0

    move-object v1, v8

    .end local v8    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .local v1, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    move-object/from16 v8, v26

    move-object/from16 v32, v5

    move-object v5, v9

    .end local v9    # "lock":Ljava/util/concurrent/CountDownLatch;
    .local v5, "lock":Ljava/util/concurrent/CountDownLatch;
    .local v32, "audioCodec":Ljava/lang/String;
    move v9, v4

    move-object v4, v10

    .end local v10    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v4, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    move-object/from16 v10, v29

    move/from16 v29, v11

    .end local v11    # "type":I
    .local v29, "type":I
    move-object/from16 v11, v30

    move-object/from16 v30, v12

    .end local v12    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v30, "uri":Lcom/sec/ims/util/ImsUri;
    move-object v12, v2

    move-object v0, v15

    move-object/from16 v15, p3

    invoke-virtual/range {v6 .. v22}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->makeCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/Message;)V

    .line 728
    const-wide/16 v6, 0x7530

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 729
    const-string v2, "makeCall: timeout."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    return v25

    .line 734
    :cond_f
    nop

    .line 736
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 737
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v2

    if-eqz v2, :cond_10

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeCall: call failed. reason "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return v25

    .line 741
    :cond_10
    const v0, 0x30000001

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MakeCall,"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 743
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-lez v0, :cond_11

    .line 744
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v0

    .line 745
    .local v0, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/sec/internal/log/CmcPingTestLogger;->ping(Ljava/util/List;)V

    .line 747
    .end local v0    # "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    iget v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return v0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/InterruptedException;
    return v25
.end method

.method public modifyCallType(III)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "oldType"    # I
    .param p3, "newType"    # I

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1128
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 1129
    const-string v2, "modifyCallType(): session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v1, -0x1

    return v1

    .line 1133
    :cond_0
    const v1, 0x30000005

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModifyCall,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1135
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->modifyCallType(III)V

    .line 1136
    const/4 v1, 0x0

    return v1
.end method

.method public proceedIncomingCall(ILjava/util/HashMap;)I
    .locals 4
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 830
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proceedIncomingCall: sessoinId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 833
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 834
    const-string/jumbo v2, "proceedIncomingCall: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v1, -0x1

    return v1

    .line 838
    :cond_0
    const v1, 0x30000002

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IncomingCall,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 839
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->progressIncomingCall(ILjava/util/HashMap;)V

    .line 840
    const/4 v1, 0x0

    return v1
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 11
    .param p1, "regId"    # I
    .param p2, "origUri"    # Ljava/lang/String;
    .param p3, "dispName"    # Ljava/lang/String;
    .param p4, "xmlBody"    # Ljava/lang/String;
    .param p5, "expires"    # I
    .param p6, "needDelay"    # Z

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "publishDialog: regId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ResipVolteHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 1338
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 1339
    const-string/jumbo v4, "publishDialog: UserAgent not found."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return v3

    .line 1342
    :cond_0
    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    .line 1344
    .local v10, "publishUri":Lcom/sec/ims/util/ImsUri;
    if-nez v10, :cond_1

    .line 1345
    const-string/jumbo v4, "publishUri Uri is wrong"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return v3

    .line 1349
    :cond_1
    invoke-virtual {v10}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object v3, v0

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->publishDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    .line 1351
    const/4 v2, 0x0

    return v2
.end method

.method public pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;)I
    .locals 18
    .param p1, "regId"    # I
    .param p2, "taruri"    # Ljava/lang/String;
    .param p3, "msisdn"    # Ljava/lang/String;
    .param p4, "origUri"    # Ljava/lang/String;
    .param p5, "targetDialog"    # Lcom/sec/ims/Dialog;

    .line 1277
    move-object/from16 v1, p0

    move-object/from16 v8, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pullingCall: regId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " taruri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msisdn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targetDialog "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1279
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    const-string v10, "ResipVolteHandler"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v11

    .line 1282
    .local v11, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const/4 v12, -0x1

    if-nez v11, :cond_0

    .line 1283
    const-string/jumbo v0, "pullingCall: UserAgent not found."

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    return v12

    .line 1286
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v13

    .line 1288
    .local v13, "pullingUri":Lcom/sec/ims/util/ImsUri;
    if-nez v13, :cond_1

    .line 1289
    const-string v0, "Pulling Uri is wrong"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    return v12

    .line 1292
    :cond_1
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v14

    .line 1293
    .local v14, "mno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "targetDialog.getCallType()= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mno="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1293
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string v0, "VZW"

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1297
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1298
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1299
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/sec/ims/Dialog;->setCallType(I)V

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recover call type= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v15, v0

    .line 1304
    .local v15, "lock":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-object/from16 v7, p3

    invoke-direct {v0, v11, v13, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    move-object v6, v0

    .line 1305
    .local v6, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v0

    iput v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mCallType:I

    .line 1306
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    move-object v5, v0

    .line 1307
    .local v5, "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    const-string v0, "AMR-WB"

    invoke-virtual {v5, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAudioCodec(Ljava/lang/String;)V

    .line 1308
    iput-object v5, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 1309
    iput-object v15, v6, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 1311
    invoke-virtual {v13}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x6

    .line 1312
    invoke-virtual {v1, v0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1311
    move-object v2, v11

    move-object/from16 v16, v5

    .end local v5    # "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    .local v16, "param":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    move-object/from16 v5, p4

    move-object/from16 v17, v6

    .end local v6    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .local v17, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    move-object/from16 v6, p5

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->pullingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Landroid/os/Message;)V

    .line 1315
    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_3

    .line 1316
    :try_start_1
    const-string/jumbo v0, "pullingCall: timeout."

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1317
    return v12

    .line 1319
    :catch_0
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_0

    .line 1321
    :cond_3
    nop

    .line 1323
    move-object/from16 v2, v17

    .end local v17    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .local v2, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 1324
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pullingCall: call failed. reason "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->reason()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return v12

    .line 1329
    :cond_4
    iget v0, v2, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return v0

    .line 1319
    .end local v2    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .restart local v17    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    :catch_1
    move-exception v0

    move-object/from16 v2, v17

    .line 1320
    .end local v17    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v2    # "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    :goto_0
    return v12
.end method

.method public registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 396
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForCallStateEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 398
    return-void
.end method

.method public registerForCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 468
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForCdpnInfoEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 470
    return-void
.end method

.method public registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 456
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForCmcInfoEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 458
    return-void
.end method

.method public registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 474
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForDedicatedBearerNotifyEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 476
    return-void
.end method

.method public registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 444
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForDialogEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 446
    return-void
.end method

.method public registerForDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 498
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForDtmfEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 500
    return-void
.end method

.method public registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 408
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForCallStateEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 410
    return-void
.end method

.method public registerForReferStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 432
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForReferStatus:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 434
    return-void
.end method

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 486
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForRrcConnectionEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 488
    return-void
.end method

.method public registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 534
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForRtpLossRateNoti:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 536
    return-void
.end method

.method public registerForSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 522
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForSIPMSGEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 524
    return-void
.end method

.method public registerForTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 510
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForTextEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 512
    return-void
.end method

.method public registerForUssdEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 420
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "registerForUssdEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 422
    return-void
.end method

.method public rejectCall(IILcom/sec/ims/util/SipError;)I
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "callType"    # I
    .param p3, "sipError"    # Lcom/sec/ims/util/SipError;

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rejectCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 756
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 757
    const-string/jumbo v2, "rejectCall: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v1, -0x1

    return v1

    .line 761
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->rejectCall(ILcom/sec/ims/util/SipError;)V

    .line 762
    const/4 v1, 0x0

    return v1
.end method

.method public rejectModifyCallType(II)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rejectModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1167
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 1168
    const-string/jumbo v2, "rejectModifyCallType(): session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v1, -0x1

    return v1

    .line 1172
    :cond_0
    const v1, 0x30000007

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RejectModifyCall,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1174
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->rejectModifyCallType(II)V

    .line 1175
    const/4 v1, 0x0

    return v1
.end method

.method public removeParticipantFromNWayConferenceCall(II)I
    .locals 4
    .param p1, "confCallSessionId"    # I
    .param p2, "participantId"    # I

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeParticipantFromNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") removeSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1083
    .local v0, "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 1084
    const-string v2, "No conference session to add a participant"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const/4 v1, -0x1

    return v1

    .line 1088
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v1, p1, v2, p2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    .line 1089
    const/4 v1, 0x0

    return v1
.end method

.method public removeParticipantFromNWayConferenceCall(ILjava/lang/String;)I
    .locals 4
    .param p1, "confCallSessionId"    # I
    .param p2, "participant"    # Ljava/lang/String;

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeParticipantFromNWayConferenceCall ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") participant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1113
    .local v0, "confCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 1114
    const-string v3, "No conference session to add a participant"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return v2

    .line 1118
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateConfCall(IIILjava/lang/String;)V

    .line 1119
    const/4 v1, 0x0

    return v1
.end method

.method public replaceSipCallId(ILjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "sipCallId"    # Ljava/lang/String;

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replaceSipCallId(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1523
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 1524
    const-string/jumbo v2, "replaceSipCallId(): session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void

    .line 1527
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setSipCallId(Ljava/lang/String;)V

    .line 1528
    return-void
.end method

.method public replaceUserAgent(II)V
    .locals 5
    .param p1, "replaceSessionId"    # I
    .param p2, "newSessionId"    # I

    .line 1532
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1533
    .local v0, "replaceCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v1

    .line 1534
    .local v1, "newCall":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    const-string v2, "ResipVolteHandler"

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1538
    :cond_0
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iput-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ProfileHandle changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    return-void

    .line 1535
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call not found with session id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    return-void
.end method

.method public replyModifyCallType(IIII)I
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "curType"    # I
    .param p3, "repType"    # I
    .param p4, "reqType"    # I

    .line 1141
    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->replyModifyCallType(IIIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)I
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "curType"    # I
    .param p3, "repType"    # I
    .param p4, "reqType"    # I
    .param p5, "cmcCallTime"    # Ljava/lang/String;

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replyModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmcCallTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1151
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 1152
    const-string/jumbo v2, "replyModifyCallType(): session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v1, -0x1

    return v1

    .line 1156
    :cond_0
    const v1, 0x30000006

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReplyModifyCall,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1158
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->replyModifyCallType(IIIILjava/lang/String;)V

    .line 1159
    const/4 v1, 0x0

    return v1
.end method

.method public resumeCall(I)I
    .locals 5
    .param p1, "sessionId"    # I

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 930
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 931
    const-string/jumbo v2, "resumeCall: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->dumpCall()V

    .line 933
    const/4 v1, -0x1

    return v1

    .line 937
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setIndicationFlag(I)V

    .line 938
    const v1, 0x30000004

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResumeCall,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 939
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->resumeCall(ILandroid/os/Message;)V

    .line 940
    return v2
.end method

.method public sendCmcInfo(ILandroid/os/Bundle;)I
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "cmcInfoData"    # Landroid/os/Bundle;

    .line 1469
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "sendCmcInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v1

    .line 1473
    .local v1, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v1, :cond_0

    .line 1474
    const-string/jumbo v2, "sendInfo: session not found."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const/4 v0, -0x1

    return v0

    .line 1478
    :cond_0
    const-string/jumbo v0, "record_event"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1479
    .local v0, "recordEvent":I
    const-string v2, "extra"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1480
    .local v2, "extra":I
    const-string/jumbo v3, "sip_call_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1481
    .local v3, "extSipCallId":Ljava/lang/String;
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v5

    invoke-direct {p0, v5, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->createCmcInfoContents(IIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendCmcInfo(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V

    .line 1482
    const/4 v4, 0x0

    return v4
.end method

.method public sendInfo(IILjava/lang/String;I)I
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "callType"    # I
    .param p3, "request"    # Ljava/lang/String;
    .param p4, "ussdType"    # I

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1456
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->convertToCallTypeForward(I)I

    move-result v8

    .line 1457
    .local v8, "type":I
    if-nez v0, :cond_0

    .line 1458
    const-string/jumbo v2, "sendInfo: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/4 v1, -0x1

    return v1

    .line 1462
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    invoke-direct {p0, v1, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->createUssdContents(ILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v6

    const/4 v1, 0x7

    .line 1463
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1462
    move v3, p1

    move v4, v8

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendInfo(IIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V

    .line 1464
    const/4 v1, 0x0

    return v1
.end method

.method public sendReInvite(ILcom/sec/internal/constants/ims/SipReason;)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/SipReason;

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReInvite(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1183
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 1184
    const-string/jumbo v3, "sendReInvite(): session not found."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return v2

    .line 1188
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateCall(IIILcom/sec/internal/constants/ims/SipReason;)V

    .line 1189
    return v4
.end method

.method public sendText(ILjava/lang/String;I)I
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "len"    # I

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendText: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 883
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 884
    const-string/jumbo v2, "sendText: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v1, -0x1

    return v1

    .line 888
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendText(ILjava/lang/String;I)V

    .line 889
    const/4 v1, 0x0

    return v1
.end method

.method public setAutomaticMode(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z

    .line 1385
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    aput-boolean p2, v0, p1

    .line 1386
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v1, v1, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v1, v1, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    aget v2, v2, p1

    sget v5, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, p1, v1, v3, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configCall(IZZZ)V

    .line 1390
    return-void
.end method

.method public setRttMode(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 1395
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    aget v1, v0, p1

    if-eq v1, p2, :cond_8

    .line 1396
    aput p2, v0, p1

    .line 1397
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v1, v1, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v1, v1, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configCall(IZZZ)V

    .line 1401
    const-string v0, "mmtel"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 1402
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_2

    .line 1403
    const-string v1, "mmtel-video"

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 1405
    :cond_2
    const/4 v1, 0x1

    .line 1406
    .local v1, "textMode":I
    if-eqz v0, :cond_8

    .line 1407
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 1408
    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq p2, v2, :cond_4

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE_OFF:I

    if-ne p2, v2, :cond_3

    goto :goto_2

    .line 1412
    :cond_3
    const/4 v1, 0x2

    goto :goto_3

    .line 1410
    :cond_4
    :goto_2
    const/4 v1, 0x3

    goto :goto_3

    .line 1414
    :cond_5
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 1415
    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p2, v2, :cond_6

    .line 1416
    const/4 v1, 0x3

    goto :goto_3

    .line 1418
    :cond_6
    const/4 v1, 0x0

    .line 1421
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v2, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setTextMode(II)V

    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTT mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " convert to TextMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipVolteHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    .end local v0    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v1    # "textMode":I
    :cond_8
    return-void
.end method

.method public setTtyMode(III)I
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "sessionID"    # I
    .param p3, "ttyMode"    # I

    .line 1356
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTtyMode:[I

    aget v1, v0, p1

    const/4 v2, 0x0

    if-eq v1, p3, :cond_4

    .line 1357
    aput p3, v0, p1

    .line 1358
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    sget v1, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v3, 0x1

    if-eq p3, v1, :cond_0

    sget v1, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq p3, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRttMode:[I

    aget v4, v4, p1

    sget v5, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAutomaticMode:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configCall(IZZZ)V

    .line 1363
    const-string v0, "mmtel"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 1364
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_2

    .line 1365
    const-string v1, "mmtel-video"

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 1368
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 1370
    sget v1, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p3, v1, :cond_3

    .line 1371
    const/4 v1, 0x3

    .local v1, "textMode":I
    goto :goto_2

    .line 1373
    .end local v1    # "textMode":I
    :cond_3
    const/4 v1, 0x2

    .line 1375
    .restart local v1    # "textMode":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTY mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " convert to TextMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResipVolteHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v3, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setTextMode(II)V

    .line 1380
    .end local v0    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v1    # "textMode":I
    :cond_4
    return v2
.end method

.method public startNWayConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I
    .locals 21
    .param p1, "regId"    # I
    .param p2, "data"    # Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;

    .line 945
    move-object/from16 v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNWayConferenceCall: regId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ResipVolteHandler"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 948
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const/4 v4, -0x1

    if-nez v1, :cond_0

    .line 949
    const-string/jumbo v5, "startNWayConferenceCall: no UserAgent found."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return v4

    .line 952
    :cond_0
    move-object/from16 v15, p0

    invoke-direct {v15, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->checkConfererenceCallData(Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 953
    return v4

    .line 955
    :cond_1
    const/4 v5, 0x0

    .line 956
    .local v5, "origUri":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 957
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    goto :goto_0

    .line 956
    :cond_2
    move-object/from16 v19, v5

    .line 959
    .end local v5    # "origUri":Ljava/lang/String;
    .local v19, "origUri":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSupportPrematureEnd()Z

    move-result v20

    .line 960
    .local v20, "supportPrematureEnd":Z
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_4

    .line 961
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSessionIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 962
    const-string/jumbo v5, "startNWayConferenceCall: not enough sessionIds"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return v4

    .line 965
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSessionIds()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 966
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSessionIds()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getCallType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object v11

    .line 967
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object v3

    .line 968
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getExtraSipHeaders()Ljava/util/HashMap;

    move-result-object v18

    .line 965
    move-object/from16 v4, p0

    move-object v5, v1

    move-object/from16 v7, v19

    move-object v15, v3

    move/from16 v17, v20

    invoke-direct/range {v4 .. v18}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)I

    move-result v3

    return v3

    .line 970
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getConferenceUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getParticipants()Ljava/util/List;

    move-result-object v8

    .line 971
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getCallType()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->isSubscriptionEnabled()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getSubscribeDialogType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriType()Ljava/lang/String;

    move-result-object v12

    .line 972
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getRemoveReferUriType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getReferUriAsserted()Ljava/lang/String;

    move-result-object v14

    .line 973
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->getUseAnonymousUpdate()Ljava/lang/String;

    move-result-object v15

    .line 970
    move-object/from16 v4, p0

    move-object v5, v1

    move-object/from16 v7, v19

    move/from16 v16, v20

    invoke-direct/range {v4 .. v16}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->startNWayConferenceCall(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    return v3
.end method

.method public startVideoEarlyMedia(I)I
    .locals 3
    .param p1, "sessionId"    # I

    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startVideoEarlyMedia(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1489
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 1490
    const-string/jumbo v2, "startVideoEarlyMedia(): session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const/4 v1, -0x1

    return v1

    .line 1493
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startVideoEarlyMedia(I)V

    .line 1494
    const/4 v1, 0x0

    return v1
.end method

.method public transferCall(ILjava/lang/String;)I
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "taruri"    # Ljava/lang/String;

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transferCall: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " taruri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1247
    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getCallBySession(I)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;

    move-result-object v0

    .line 1251
    .local v0, "call":Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
    if-nez v0, :cond_0

    .line 1252
    const-string/jumbo v2, "transferCall: session not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/4 v1, -0x1

    return v1

    .line 1256
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p2, v4, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transferCall(ILjava/lang/String;ILandroid/os/Message;)V

    .line 1257
    return v4
.end method

.method public unregisterForCallStateEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 402
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCallStateEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCallStateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 404
    return-void
.end method

.method public unregisterForCdpnInfoEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 546
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCdpnInfoEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 548
    return-void
.end method

.method public unregisterForCmcInfoEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 462
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCmcInfoEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mCmcInfoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 464
    return-void
.end method

.method public unregisterForDedicatedBearerNotifyEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 480
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForDedicatedBearerNotifyEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 482
    return-void
.end method

.method public unregisterForDialogEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 450
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForDialogEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 452
    return-void
.end method

.method public unregisterForDtmfEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 504
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForDtmfEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mDtmfEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 506
    return-void
.end method

.method public unregisterForIncomingCallEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 414
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForCallStateEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mIncomingCallEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 416
    return-void
.end method

.method public unregisterForReferStatus(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 438
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForReferStatus:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 440
    return-void
.end method

.method public unregisterForRrcConnectionEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 492
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForRrcConnectionEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 494
    return-void
.end method

.method public unregisterForRtpLossRateNoti(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 540
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForRtpLossRateNoti:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 542
    return-void
.end method

.method public unregisterForSIPMSGEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 528
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForSIPMSGEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mSIPMSGNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 530
    return-void
.end method

.method public unregisterForTextEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 516
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForTextEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mTextEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 518
    return-void
.end method

.method public unregisterForUssdEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 426
    const-string v0, "ResipVolteHandler"

    const-string/jumbo v1, "unregisterForUssdEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mUssdEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 428
    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;)V
    .locals 6
    .param p1, "regId"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .line 1430
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 1432
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const-string v1, "ResipVolteHandler"

    if-nez v0, :cond_0

    .line 1433
    const-string v2, "Not Registered Volte Services"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    return-void

    .line 1437
    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1438
    .local v2, "lock":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mAudioInterfaceHandler:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;

    const/16 v4, 0x8

    .line 1439
    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1438
    invoke-virtual {v0, p2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateAudioInterface(Ljava/lang/String;Landroid/os/Message;)V

    .line 1442
    const-wide/16 v3, 0x3e8

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1443
    const-string/jumbo v3, "updateAudioInterface: timeout."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    return-void

    .line 1448
    :cond_1
    nop

    .line 1449
    return-void

    .line 1446
    :catch_0
    move-exception v1

    .line 1447
    .local v1, "e":Ljava/lang/InterruptedException;
    return-void
.end method

.method public updateScreenOnOff(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "on"    # I

    .line 1499
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateScreenOnOff(II)V

    .line 1500
    return-void
.end method

.method public updateXqEnable(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 1504
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateXqEnable(IZ)V

    .line 1505
    return-void
.end method
