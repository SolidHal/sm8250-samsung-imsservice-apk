.class public Lcom/sec/internal/ims/core/handler/secims/StackIF;
.super Ljava/lang/Object;
.source "StackIF.java"

# interfaces
.implements Lcom/sec/internal/ims/core/handler/secims/IStackIF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;,
        Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StackIF"

.field private static final MAX_STACK_MSG_SIZE:I = 0x80000

.field private static volatile sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;


# instance fields
.field private mBuffer:[B

.field private final mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mHandle:I

.field private final mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

.field private final mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRawSipRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/handler/secims/ImsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mSipHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mStackDumpData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/handler/secims/DumpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mUaListenerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/StackEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUaRegisterResponseRawSip:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mXdmRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    .line 247
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 248
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mHandle:I

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mStackDumpData:Ljava/util/List;

    .line 270
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 277
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 278
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 279
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 280
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 281
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 282
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 283
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 284
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 285
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 286
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 287
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 288
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 289
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 290
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 291
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXdmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 292
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 293
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 294
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 295
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 296
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 297
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 298
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 299
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 300
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 301
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 302
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 303
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 304
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 305
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 306
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 307
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 308
    return-void
.end method

.method private static ImsLogC(ILjava/lang/String;Z)V
    .locals 0
    .param p0, "logClass"    # I
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "flush"    # Z

    .line 2260
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 2261
    return-void
.end method

.method public static checkLogEnable()Z
    .locals 1

    .line 2998
    sget-boolean v0, Lcom/sec/ims/extensions/Extensions$Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isOtpAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private createDeviceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/DeviceTuple;)I
    .locals 10
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "deviceTuple"    # Lcom/sec/ims/presence/DeviceTuple;

    .line 960
    const-string v0, "StackIF"

    const-string v1, "createDevicetupleoffset enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v0, -0x1

    .line 962
    .local v0, "deviceCapsOffset":I
    const/4 v1, -0x1

    .line 963
    .local v1, "descriptionsOffset":I
    const/4 v2, -0x1

    .line 964
    .local v2, "notesOffset":I
    const/4 v3, -0x1

    .line 965
    .local v3, "deviceTuplesOffset":I
    const/4 v4, 0x0

    .line 967
    .local v4, "index":I
    iget-object v5, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 968
    iget-object v5, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 970
    .local v5, "deviceCapsOffsets":[I
    iget-object v6, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    .line 971
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getDeviceCapabilityElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 970
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/constants/ims/XmlElement;

    .line 972
    .local v7, "cap":Lcom/sec/internal/constants/ims/XmlElement;
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "index":I
    .local v8, "index":I
    invoke-direct {p0, p1, v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v9

    aput v9, v5, v4

    .line 973
    .end local v7    # "cap":Lcom/sec/internal/constants/ims/XmlElement;
    move v4, v8

    goto :goto_0

    .line 974
    .end local v8    # "index":I
    .restart local v4    # "index":I
    :cond_0
    nop

    .line 976
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->createDeviceCapabilitiesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    .line 981
    .end local v5    # "deviceCapsOffsets":[I
    :cond_1
    iget-object v5, p2, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 982
    const/4 v4, 0x0

    .line 983
    iget-object v5, p2, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 984
    .local v5, "descriptions":[I
    iget-object v6, p2, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    .line 985
    const-string v7, "description"

    invoke-static {v7, v6}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 984
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/constants/ims/XmlElement;

    .line 987
    .local v7, "descr":Lcom/sec/internal/constants/ims/XmlElement;
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "index":I
    .restart local v8    # "index":I
    invoke-direct {p0, p1, v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v9

    aput v9, v5, v4

    .line 988
    .end local v7    # "descr":Lcom/sec/internal/constants/ims/XmlElement;
    move v4, v8

    goto :goto_1

    .line 989
    .end local v8    # "index":I
    .restart local v4    # "index":I
    :cond_2
    nop

    .line 991
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->createDescriptionsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    .line 994
    .end local v5    # "descriptions":[I
    :cond_3
    iget-object v5, p2, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 995
    const/4 v4, 0x0

    .line 996
    iget-object v5, p2, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 997
    .local v5, "notes":[I
    iget-object v6, p2, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    .line 998
    const-string v7, "note"

    invoke-static {v7, v6}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 997
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/constants/ims/XmlElement;

    .line 999
    .local v7, "note":Lcom/sec/internal/constants/ims/XmlElement;
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "index":I
    .restart local v8    # "index":I
    invoke-direct {p0, p1, v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v9

    aput v9, v5, v4

    .line 1000
    .end local v7    # "note":Lcom/sec/internal/constants/ims/XmlElement;
    move v4, v8

    goto :goto_2

    .line 1001
    .end local v8    # "index":I
    .restart local v4    # "index":I
    :cond_4
    nop

    .line 1003
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->createNotesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 1007
    .end local v5    # "notes":[I
    :cond_5
    const/4 v5, -0x1

    .line 1008
    .local v5, "DeviceIdOffset":I
    iget-object v6, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1009
    iget-object v6, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1012
    :cond_6
    const/4 v6, -0x1

    .line 1013
    .local v6, "TimestampOffset":I
    iget-object v7, p2, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 1014
    iget-object v7, p2, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1017
    :cond_7
    nop

    .line 1018
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->startDeviceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1020
    const/4 v7, -0x1

    if-eq v5, v7, :cond_8

    .line 1021
    nop

    .line 1022
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addDeviceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1025
    :cond_8
    if-eq v0, v7, :cond_9

    .line 1026
    nop

    .line 1027
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addDeviceCapabilities(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1030
    :cond_9
    if-eq v1, v7, :cond_a

    .line 1031
    nop

    .line 1032
    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addDescriptions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1035
    :cond_a
    if-eq v2, v7, :cond_b

    .line 1036
    nop

    .line 1037
    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addNotes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1040
    :cond_b
    if-eq v6, v7, :cond_c

    .line 1041
    nop

    .line 1042
    invoke-static {p1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1045
    :cond_c
    nop

    .line 1047
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->endDeviceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1049
    return v3
.end method

.method private createPersonTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/PersonTuple;)I
    .locals 9
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "personTuple"    # Lcom/sec/ims/presence/PersonTuple;

    .line 1173
    const-string v0, "StackIF"

    const-string v1, "createPersonTupleOffset enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 v0, -0x1

    .line 1175
    .local v0, "personTuplesOffset":I
    const/4 v1, 0x0

    .line 1177
    .local v1, "index":I
    iget-object v2, p2, Lcom/sec/ims/presence/PersonTuple;->mNotes:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lcom/sec/ims/presence/PersonTuple;->mNotes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1178
    .local v2, "notesLength":I
    :goto_0
    const/4 v3, -0x1

    .line 1179
    .local v3, "notesOffset":I
    if-lez v2, :cond_2

    .line 1180
    new-array v4, v2, [I

    .line 1181
    .local v4, "noteOffset":[I
    iget-object v5, p2, Lcom/sec/ims/presence/PersonTuple;->mNotes:Ljava/util/List;

    .line 1182
    const-string v6, "note"

    invoke-static {v6, v5}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1181
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/constants/ims/XmlElement;

    .line 1183
    .local v6, "note":Lcom/sec/internal/constants/ims/XmlElement;
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "index":I
    .local v7, "index":I
    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v8

    aput v8, v4, v1

    .line 1184
    .end local v6    # "note":Lcom/sec/internal/constants/ims/XmlElement;
    move v1, v7

    goto :goto_1

    .line 1185
    .end local v7    # "index":I
    .restart local v1    # "index":I
    :cond_1
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createNotesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    .line 1188
    .end local v4    # "noteOffset":[I
    :cond_2
    const/4 v4, -0x1

    .line 1189
    .local v4, "TimestampOffset":I
    iget-object v5, p2, Lcom/sec/ims/presence/PersonTuple;->mTimestamp:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1190
    iget-object v5, p2, Lcom/sec/ims/presence/PersonTuple;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1193
    :cond_3
    const/4 v5, -0x1

    .line 1194
    .local v5, "StatusIconOffset":I
    iget-object v6, p2, Lcom/sec/ims/presence/PersonTuple;->mStatusIcon:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 1195
    iget-object v6, p2, Lcom/sec/ims/presence/PersonTuple;->mStatusIcon:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1198
    :cond_4
    nop

    .line 1199
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->startPersonTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1202
    const/4 v6, -0x1

    if-eq v4, v6, :cond_5

    .line 1203
    nop

    .line 1204
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1208
    :cond_5
    if-eq v5, v6, :cond_6

    .line 1209
    nop

    .line 1210
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->addStatusIcon(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1214
    :cond_6
    if-eq v3, v6, :cond_7

    .line 1215
    nop

    .line 1216
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->addNotes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1221
    :cond_7
    nop

    .line 1222
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->endPersonTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1225
    return v0
.end method

.method private createServiceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/ServiceTuple;)I
    .locals 12
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "serviceTuple"    # Lcom/sec/ims/presence/ServiceTuple;

    .line 1054
    const-string v0, "StackIF"

    const-string v1, "createServiceTupleOffset enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v1, -0x1

    .line 1056
    .local v1, "serviceTuplesOffset":I
    const/4 v2, -0x1

    .line 1057
    .local v2, "mediaCapsOffset":I
    const/4 v3, 0x0

    .line 1080
    .local v3, "index":I
    iget-object v4, p2, Lcom/sec/ims/presence/ServiceTuple;->mediaCapabilities:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 1081
    iget-wide v4, p2, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    .line 1082
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getMediaCapabilityElements(J)Ljava/util/List;

    move-result-object v4

    .line 1083
    .local v4, "capList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/XmlElement;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1084
    .local v5, "mediaCapsOffsets":[I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/constants/ims/XmlElement;

    .line 1085
    .local v7, "cap":Lcom/sec/internal/constants/ims/XmlElement;
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "index":I
    .local v8, "index":I
    invoke-direct {p0, p1, v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v9

    aput v9, v5, v3

    .line 1086
    .end local v7    # "cap":Lcom/sec/internal/constants/ims/XmlElement;
    move v3, v8

    goto :goto_0

    .line 1087
    .end local v8    # "index":I
    .restart local v3    # "index":I
    :cond_0
    nop

    .line 1089
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->createMediaCapabilitiesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 1093
    .end local v4    # "capList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/XmlElement;>;"
    .end local v5    # "mediaCapsOffsets":[I
    :cond_1
    const/4 v4, -0x1

    .line 1094
    .local v4, "serviceIdOffset":I
    iget-object v5, p2, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1095
    iget-object v5, p2, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1098
    :cond_2
    const/4 v5, -0x1

    .line 1099
    .local v5, "tupleIdOffset":I
    iget-object v6, p2, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 1100
    iget-object v6, p2, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1103
    :cond_3
    const/4 v6, -0x1

    .line 1104
    .local v6, "versionOffset":I
    iget-object v7, p2, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 1105
    iget-object v7, p2, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1108
    :cond_4
    const/4 v7, -0x1

    .line 1109
    .local v7, "descriptionOffset":I
    iget-object v8, p2, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 1110
    iget-object v8, p2, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 1113
    :cond_5
    const/4 v8, -0x1

    .line 1114
    .local v8, "basicStatusOffset":I
    const/4 v9, -0x1

    .line 1115
    .local v9, "statusOffset":I
    iget-object v10, p2, Lcom/sec/ims/presence/ServiceTuple;->basicStatus:Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 1116
    iget-object v10, p2, Lcom/sec/ims/presence/ServiceTuple;->basicStatus:Ljava/lang/String;

    invoke-virtual {p1, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1117
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple_/Status;->startStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1118
    invoke-static {p1, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple_/Status;->addBasic(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1119
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple_/Status;->endStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 1122
    :cond_6
    nop

    .line 1123
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->startServiceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1125
    const/4 v10, -0x1

    if-eq v4, v10, :cond_7

    .line 1126
    nop

    .line 1127
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addServiceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1131
    :cond_7
    if-eq v5, v10, :cond_8

    .line 1132
    nop

    .line 1133
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addTupleId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1137
    :cond_8
    if-eq v6, v10, :cond_9

    .line 1138
    nop

    .line 1139
    invoke-static {p1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1143
    :cond_9
    if-eq v7, v10, :cond_a

    .line 1144
    nop

    .line 1145
    invoke-static {p1, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1148
    :cond_a
    if-eq v9, v10, :cond_c

    .line 1149
    nop

    .line 1150
    invoke-static {p1, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1158
    if-eq v2, v10, :cond_b

    .line 1159
    nop

    .line 1160
    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addMediaCapabilities(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1164
    :cond_b
    nop

    .line 1166
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->endServiceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1169
    .end local v1    # "serviceTuplesOffset":I
    .local v0, "serviceTuplesOffset":I
    return v0

    .line 1153
    .end local v0    # "serviceTuplesOffset":I
    .restart local v1    # "serviceTuplesOffset":I
    :cond_c
    const-string/jumbo v11, "requestPublish: service tuple status (either basic or other status) is required"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return v10
.end method

.method private findAndRemoveRequest(I)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    .locals 4
    .param p1, "tid"    # I

    .line 2220
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    monitor-enter v0

    .line 2221
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2223
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/core/handler/secims/ImsRequest;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    .line 2226
    .local v2, "ir":Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    iget v3, v2, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mTid:I

    if-ne v3, p1, :cond_0

    .line 2227
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2228
    monitor-exit v0

    return-object v2

    .line 2231
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/core/handler/secims/ImsRequest;>;"
    .end local v2    # "ir":Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    :cond_1
    monitor-exit v0

    .line 2233
    const/4 v0, 0x0

    return-object v0

    .line 2231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I
    .locals 16
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "element"    # Lcom/sec/internal/constants/ims/XmlElement;

    .line 1449
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, -0x1

    .line 1450
    .local v2, "childElementOffset":I
    const/4 v3, 0x0

    .line 1451
    .local v3, "index":I
    iget-object v4, v1, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1452
    .local v4, "childElementsLength":I
    if-lez v4, :cond_1

    .line 1453
    new-array v5, v4, [I

    .line 1455
    .local v5, "attributeOffsets":[I
    iget-object v6, v1, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/constants/ims/XmlElement;

    .line 1456
    .local v7, "childElement":Lcom/sec/internal/constants/ims/XmlElement;
    add-int/lit8 v8, v3, 0x1

    move-object/from16 v9, p0

    .end local v3    # "index":I
    .local v8, "index":I
    invoke-direct {v9, v0, v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v10

    aput v10, v5, v3

    .line 1457
    .end local v7    # "childElement":Lcom/sec/internal/constants/ims/XmlElement;
    move v3, v8

    goto :goto_0

    .line 1458
    .end local v8    # "index":I
    .restart local v3    # "index":I
    :cond_0
    move-object/from16 v9, p0

    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->createElementsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    goto :goto_1

    .line 1452
    .end local v5    # "attributeOffsets":[I
    :cond_1
    move-object/from16 v9, p0

    .line 1461
    :goto_1
    iget-object v5, v1, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1462
    .local v5, "attrLength":I
    const/4 v6, -0x1

    .line 1463
    .local v6, "attrOffset":I
    const/4 v7, -0x1

    .line 1464
    .local v7, "AtrNamespaceOffset":I
    const/4 v8, -0x1

    .line 1465
    .local v8, "AtrNameOffset":I
    const/4 v10, -0x1

    .line 1466
    .local v10, "AtrValueOffset":I
    if-lez v5, :cond_9

    .line 1467
    iget-object v12, v1, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [I

    .line 1468
    .local v12, "attributeOffsets":[I
    const/4 v3, 0x0

    .line 1469
    iget-object v13, v1, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/internal/constants/ims/XmlElement$Attribute;

    .line 1470
    .local v14, "attr":Lcom/sec/internal/constants/ims/XmlElement$Attribute;
    const/4 v7, -0x1

    .line 1471
    iget-object v15, v14, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 1472
    iget-object v15, v14, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 1475
    :cond_2
    const/4 v8, -0x1

    .line 1476
    iget-object v15, v14, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    if-eqz v15, :cond_3

    .line 1477
    iget-object v15, v14, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1480
    :cond_3
    const/4 v10, -0x1

    .line 1481
    iget-object v15, v14, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    if-eqz v15, :cond_4

    .line 1482
    iget-object v15, v14, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1485
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "element attr: ns: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " name: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " val: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v15, "StackIF"

    invoke-static {v15, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->startAttribute(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1490
    const/4 v11, -0x1

    if-eq v7, v11, :cond_5

    .line 1491
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->addNameSpace(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1494
    :cond_5
    if-eq v8, v11, :cond_6

    .line 1495
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1498
    :cond_6
    if-eq v10, v11, :cond_7

    .line 1499
    invoke-static {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1502
    :cond_7
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "index":I
    .local v11, "index":I
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->endAttribute(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v15

    aput v15, v12, v3

    .line 1503
    .end local v14    # "attr":Lcom/sec/internal/constants/ims/XmlElement$Attribute;
    move v3, v11

    goto :goto_2

    .line 1504
    .end local v11    # "index":I
    .restart local v3    # "index":I
    :cond_8
    invoke-static {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->createAttributesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    .line 1506
    .end local v12    # "attributeOffsets":[I
    :cond_9
    const/4 v11, -0x1

    .line 1507
    .local v11, "EleNamespaceOffset":I
    const/4 v12, -0x1

    .line 1508
    .local v12, "EleNameOffset":I
    const/4 v13, -0x1

    .line 1510
    .local v13, "EleValueOffset":I
    iget-object v14, v1, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-eqz v14, :cond_a

    .line 1511
    iget-object v14, v1, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1513
    :cond_a
    iget-object v14, v1, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    if-eqz v14, :cond_b

    .line 1514
    iget-object v14, v1, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1516
    :cond_b
    iget-object v14, v1, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    if-eqz v14, :cond_c

    .line 1517
    iget-object v14, v1, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1519
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->startElement(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1521
    const/4 v14, -0x1

    if-eq v11, v14, :cond_d

    .line 1522
    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addNameSpace(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1524
    :cond_d
    if-eq v12, v14, :cond_e

    .line 1525
    invoke-static {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1527
    :cond_e
    if-eq v13, v14, :cond_f

    .line 1528
    invoke-static {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1530
    :cond_f
    if-eq v6, v14, :cond_10

    .line 1531
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addAttributes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1533
    :cond_10
    if-eq v2, v14, :cond_11

    .line 1534
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addElements(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1537
    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->endElement(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v14

    return v14
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    monitor-enter v0

    .line 321
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    if-nez v1, :cond_1

    .line 322
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 323
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    if-nez v1, :cond_0

    .line 324
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 325
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->init()V

    .line 327
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 329
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    .line 320
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sipMsg"    # Ljava/lang/String;

    .line 2341
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2342
    return-object p1

    .line 2345
    :cond_0
    move-object v0, p1

    .line 2348
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "sip:[#*0-9+-]*[0-9+-]+"

    const-string/jumbo v2, "sip:xxxxxxxxxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2350
    const-string/jumbo v1, "tel:[#*0-9+-]*[0-9+-]+"

    const-string/jumbo v2, "tel:xxxxxxxxxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2352
    const-string v1, "imei:+[0-9+-]+"

    const-string v2, "imei:xxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2354
    const-string/jumbo v1, "username=\"+[^\"]+"

    const-string/jumbo v2, "username=xxxxxxxxxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2356
    const-string v1, "P-Access-Network-Info:+[^\n]+"

    const-string v2, "P-Access-Network-Info: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2359
    const-string v1, "o=+[0-9:+-]+"

    const-string v2, "o=xxxxxxxxxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2361
    const-string v1, "\"+[0-9+-]+\""

    const-string v2, "\"xxxxxxxxxxxxxxx\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2363
    const-string v1, ">[0-9+-]{4,}<"

    const-string v2, ">xxxxxxxxxxxxxxx<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2365
    const-string/jumbo v1, "target>+.+</.*target"

    const-string/jumbo v2, "target>xxxxxxxxxxxxxxx</target"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2367
    const-string v1, "From: +[#*0-9+-]*[0-9+-]+"

    const-string v2, "From: xxxxxxxxxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2369
    const-string v1, "To: +[#*0-9+-]*[0-9+-]+"

    const-string v2, "To: xxxxxxxxxxxxxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2371
    const-string v1, "(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}"

    const-string/jumbo v2, "xxx.xxx.xxx.xxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    const-string v1, "((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)"

    const-string/jumbo v2, "xxxx:xxxx:xxxx:xxxx"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2375
    const-string/jumbo v1, "session-description>.+</session-description"

    const-string/jumbo v2, "session-description>xxxxxxxxxxxxxxx</session-description"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2377
    return-object v0
.end method

.method private init()V
    .locals 1

    .line 311
    const/high16 v0, 0x80000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mBuffer:[B

    .line 314
    :try_start_0
    const-string/jumbo v0, "sec-ims"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 318
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method private native initCmc(Ljava/lang/Object;)V
.end method

.method private native initStack(Ljava/lang/Object;)V
.end method

.method private planiTimeReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I
    .locals 1
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "handle"    # J
    .param p4, "time"    # J

    .line 577
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->startRequestUpdateTimeInPlani(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 578
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 579
    invoke-static {p1, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->addTime(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 580
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->endRequestUpdateTimeInPlani(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method private native processCommandBuffer([BI)V
.end method

.method private static declared-synchronized processMessage([BI)V
    .locals 10
    .param p0, "buffer"    # [B
    .param p1, "len"    # I

    const-class v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    monitor-enter v0

    .line 2239
    :try_start_0
    new-array v1, p1, [B

    .line 2241
    .local v1, "msg":[B
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2242
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2243
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2244
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->getRootAsImsBuffer(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;

    move-result-object v3

    .line 2245
    .local v3, "imsBuffer":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->trid()J

    move-result-wide v4

    .line 2246
    .local v4, "tid":J
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->msgType()B

    move-result v6

    .line 2247
    .local v6, "messageType":I
    const-string v7, "StackIF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processMessage "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 2249
    const-string v7, "StackIF"

    const-string v8, "Processing Notify"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v7

    new-instance v8, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;-><init>()V

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->msg(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {v7, v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->processNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 2251
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 2252
    const-string v7, "StackIF"

    const-string v8, "Processing Response"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v7

    long-to-int v8, v4

    new-instance v9, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;

    invoke-direct {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;-><init>()V

    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->msg(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;

    invoke-direct {v7, v8, v9}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->processResponse(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;)V

    .line 2255
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "imsBuffer":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;
    .end local v4    # "tid":J
    .end local v6    # "messageType":I
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2256
    monitor-exit v0

    return-void

    .line 2255
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2238
    .end local v1    # "msg":[B
    .end local p0    # "buffer":[B
    .end local p1    # "len":I
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private processNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 33
    .param p1, "noti"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 2381
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v2

    .line 2383
    .local v2, "id":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UNSL]< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SECIMSJ"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processNotify: id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StackIF"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    const/4 v3, -0x1

    .line 2388
    .local v3, "handle":I
    const-string/jumbo v5, "processNotify: msg not found."

    const/4 v6, 0x1

    const/16 v7, 0x2711

    if-ne v2, v7, :cond_6

    .line 2389
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v7

    if-ne v7, v6, :cond_5

    .line 2391
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    .line 2392
    .local v5, "rs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v3

    .line 2394
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2395
    .local v7, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->serviceListLength()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 2396
    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->serviceList(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2395
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2399
    .end local v8    # "i":I
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2400
    .local v8, "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->impuListLength()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 2401
    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->impuList(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2400
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2403
    .end local v9    # "i":I
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RegistrationStatus - handle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " serviceList "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " regiType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2406
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->regiType()I

    move-result v10

    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RegiType;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " reason "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ecmpMode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->ecmpMode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " retryAfter "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->retryAfter()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2403
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    new-instance v4, Lcom/sec/ims/util/SipError;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respCode()I

    move-result v9

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respReason()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 2413
    .local v4, "error":Lcom/sec/ims/util/SipError;
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2414
    .local v15, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    if-eqz v15, :cond_3

    .line 2415
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->regiType()I

    move-result v14

    .line 2416
    .local v14, "type":I
    if-nez v14, :cond_2

    .line 2417
    nop

    .line 2419
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->retryAfter()I

    move-result v6

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->ecmpMode()I

    move-result v16

    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    .line 2420
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Ljava/lang/String;

    .line 2417
    move-object v9, v15

    move v10, v3

    move-object v11, v7

    move-object v12, v8

    move-object v13, v4

    move-object/from16 v18, v7

    move v7, v14

    .end local v14    # "type":I
    .local v7, "type":I
    .local v18, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v14, v6

    move-object v6, v15

    .end local v15    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    .local v6, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-virtual/range {v9 .. v16}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegistered(ILjava/util/List;Ljava/util/List;Lcom/sec/ims/util/SipError;IILjava/lang/String;)V

    goto :goto_2

    .line 2421
    .end local v6    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    .end local v18    # "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "type":I
    .restart local v15    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    :cond_2
    move-object/from16 v18, v7

    move v7, v14

    move-object v9, v15

    .end local v14    # "type":I
    .end local v15    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    .local v7, "type":I
    .local v9, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    .restart local v18    # "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-ne v7, v6, :cond_4

    .line 2422
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->retryAfter()I

    move-result v6

    invoke-virtual {v9, v3, v4, v6}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onDeregistered(ILcom/sec/ims/util/SipError;I)V

    goto :goto_2

    .line 2414
    .end local v9    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    .end local v18    # "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    :cond_3
    move-object/from16 v18, v7

    move-object v9, v15

    .line 2426
    .end local v4    # "error":Lcom/sec/ims/util/SipError;
    .end local v5    # "rs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;
    .end local v7    # "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    :cond_4
    :goto_2
    goto/16 :goto_1d

    .line 2427
    :cond_5
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2429
    :cond_6
    const/16 v7, 0x2729

    const-string v8, "Handle: "

    if-ne v2, v7, :cond_9

    .line 2430
    const-string/jumbo v5, "receive registered impu"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    .line 2432
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;

    .line 2433
    .local v5, "regImpu":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;->handle()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v3

    .line 2434
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;->impu()Ljava/lang/String;

    move-result-object v6

    .line 2435
    .local v6, "impu":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " - impu: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2436
    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2435
    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2438
    .local v4, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    if-eqz v4, :cond_7

    .line 2439
    invoke-virtual {v4, v3, v6}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegImpuNotification(ILjava/lang/String;)V

    .line 2441
    .end local v4    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    .end local v5    # "regImpu":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;
    .end local v6    # "impu":Ljava/lang/String;
    :cond_7
    goto/16 :goto_1d

    .line 2431
    :cond_8
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2442
    :cond_9
    const/16 v7, 0x271d

    if-ne v2, v7, :cond_c

    .line 2443
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 2444
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;

    invoke-direct {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;-><init>()V

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;

    .line 2445
    .local v4, "ss":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;
    new-instance v5, Lcom/sec/ims/util/SipError;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;->respCode()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;->respReason()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 2446
    .local v5, "error":Lcom/sec/ims/util/SipError;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;->handle()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v3

    .line 2447
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2448
    .local v6, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    if-eqz v6, :cond_a

    .line 2449
    invoke-virtual {v6, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onSubscribed(ILcom/sec/ims/util/SipError;)V

    .line 2451
    .end local v4    # "ss":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;
    .end local v5    # "error":Lcom/sec/ims/util/SipError;
    .end local v6    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    :cond_a
    goto/16 :goto_1d

    .line 2443
    :cond_b
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2452
    :cond_c
    const/16 v7, 0x2717

    if-ne v2, v7, :cond_f

    .line 2454
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_e

    .line 2455
    const-string v5, "RegiInfoChanged"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    invoke-direct {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;-><init>()V

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    .line 2457
    .local v4, "ri":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;->handle()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v3

    .line 2458
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2459
    .local v5, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    if-eqz v5, :cond_d

    .line 2460
    invoke-virtual {v5, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegInfoNotification(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V

    .line 2462
    .end local v4    # "ri":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;
    .end local v5    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    :cond_d
    goto/16 :goto_1d

    .line 2454
    :cond_e
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2464
    :cond_f
    const/16 v7, 0x2712

    const/4 v9, 0x2

    if-ne v2, v7, :cond_12

    .line 2465
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v6

    if-ne v6, v9, :cond_11

    .line 2466
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;

    .line 2467
    .local v5, "ra":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->handle()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v3

    .line 2468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RegistrationAuth - handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " nonce "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->nonce()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2468
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2472
    .restart local v6    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    if-eqz v6, :cond_10

    .line 2473
    const-string v7, "calling onISIMAuthRequested."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->nonce()Ljava/lang/String;

    move-result-object v4

    .line 2475
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->recvMng()J

    move-result-wide v7

    long-to-int v7, v7

    .line 2474
    invoke-virtual {v6, v3, v4, v7}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onISIMAuthRequested(ILjava/lang/String;I)V

    goto :goto_3

    .line 2477
    :cond_10
    const-string v7, " mUaListener not found."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    .end local v5    # "ra":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;
    .end local v6    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    :goto_3
    goto/16 :goto_1d

    .line 2480
    :cond_11
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2482
    :cond_12
    const/16 v7, 0x2714

    if-ne v2, v7, :cond_14

    .line 2483
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_13

    .line 2484
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    .line 2485
    .local v5, "cs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->handle()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v3

    .line 2486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallStatus - handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->session()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2486
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2491
    .end local v5    # "cs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;
    goto/16 :goto_1d

    .line 2483
    :cond_13
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2492
    :cond_14
    const/16 v7, 0x2715

    if-ne v2, v7, :cond_16

    .line 2493
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_15

    .line 2494
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;

    invoke-direct {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;-><init>()V

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;

    .line 2496
    .local v4, "nc":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2497
    .end local v4    # "nc":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2493
    :cond_15
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2498
    :cond_16
    const/16 v7, 0x271e

    if-ne v2, v7, :cond_18

    .line 2499
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_17

    .line 2500
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;

    invoke-direct {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;-><init>()V

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;

    .line 2502
    .local v4, "modVideoData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2503
    .end local v4    # "modVideoData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2499
    :cond_17
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2504
    :cond_18
    const/16 v7, 0x271f

    if-ne v2, v7, :cond_1a

    .line 2505
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_19

    .line 2506
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;

    invoke-direct {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;-><init>()V

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;

    .line 2508
    .local v4, "videoEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2509
    .end local v4    # "videoEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2505
    :cond_19
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2510
    :cond_1a
    const/16 v7, 0x2733

    if-ne v2, v7, :cond_1c

    .line 2511
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_1b

    .line 2512
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;

    invoke-direct {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;-><init>()V

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;

    .line 2514
    .local v4, "recordEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2515
    .end local v4    # "recordEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2511
    :cond_1b
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2516
    :cond_1c
    const/16 v7, 0x2716

    if-ne v2, v7, :cond_21

    .line 2517
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_20

    .line 2518
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;

    .line 2519
    .local v5, "cc":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;
    if-nez v5, :cond_1d

    .line 2520
    const-string v6, "cc is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    return-void

    .line 2524
    :cond_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConfCallChanged: session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->session()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2526
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->event()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " participants "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2524
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v6

    new-array v6, v6, [Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    .line 2529
    .local v6, "participants":[Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v8

    if-ge v7, v8, :cond_1e

    .line 2530
    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2529
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2533
    .end local v7    # "i":I
    :cond_1e
    array-length v7, v6

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v7, :cond_1f

    aget-object v8, v6, v10

    .line 2534
    .local v8, "participant":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2535
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2534
    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    .end local v8    # "participant":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2538
    :cond_1f
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2539
    .end local v5    # "cc":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;
    .end local v6    # "participants":[Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2517
    :cond_20
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2540
    :cond_21
    const/16 v7, 0x2718

    if-ne v2, v7, :cond_22

    .line 2541
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;

    .line 2543
    .local v5, "rr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;
    const-string v6, "ReferReceived:"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2546
    .end local v5    # "rr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;
    move/from16 v23, v3

    goto/16 :goto_1c

    :cond_22
    const/16 v7, 0x2719

    if-ne v2, v7, :cond_24

    .line 2547
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;

    .line 2548
    .local v5, "rs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;
    if-nez v5, :cond_23

    .line 2549
    const-string/jumbo v6, "rs is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    return-void

    .line 2553
    :cond_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReferStatus: session="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->session()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " resp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->statusCode()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2553
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2557
    .end local v5    # "rs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;
    move/from16 v23, v3

    goto/16 :goto_1c

    :cond_24
    const/16 v7, 0x271b

    if-ne v2, v7, :cond_27

    .line 2558
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_26

    .line 2559
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;

    .line 2560
    .local v5, "modCallData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;
    if-nez v5, :cond_25

    .line 2561
    const-string v6, "modCallData is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    return-void

    .line 2565
    :cond_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ModifyCall - session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->session()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", oldCallType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->oldType()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", newCallType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2567
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->newType()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2565
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2570
    .end local v5    # "modCallData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2558
    :cond_26
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2571
    :cond_27
    const/16 v7, 0x271a

    if-ne v2, v7, :cond_2b

    .line 2572
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2a

    .line 2573
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;

    .line 2574
    .local v5, "ur":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;
    if-nez v5, :cond_28

    .line 2575
    const-string/jumbo v6, "ur is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    return-void

    .line 2579
    :cond_28
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->handle()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v3

    .line 2580
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UpdateRouteTable - handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " op "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->operation()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " addr "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->address()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2580
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2584
    .local v6, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    if-eqz v6, :cond_29

    .line 2585
    const-string v7, "calling UpdateRouteTable."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->operation()I

    move-result v4

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->address()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v4, v7}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onUpdateRouteTableRequested(IILjava/lang/String;)V

    .line 2588
    .end local v5    # "ur":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;
    .end local v6    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    :cond_29
    goto/16 :goto_1d

    .line 2589
    :cond_2a
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2591
    :cond_2b
    const/16 v7, 0x2727

    if-ne v2, v7, :cond_2e

    .line 2592
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v5

    if-ne v5, v6, :cond_2d

    .line 2593
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    .line 2594
    .local v5, "rs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v3

    .line 2595
    const-string v6, "calling onUpdate Pani"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2598
    .local v4, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    if-eqz v4, :cond_2c

    .line 2599
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onUpdatePani()V

    .line 2601
    .end local v4    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    .end local v5    # "rs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;
    :cond_2c
    goto/16 :goto_1d

    .line 2592
    :cond_2d
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2602
    :cond_2e
    const/16 v7, 0x272a

    const-string v11, "]"

    if-ne v2, v7, :cond_31

    .line 2603
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v4

    if-ne v4, v6, :cond_30

    .line 2604
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    invoke-direct {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;-><init>()V

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    .line 2605
    .local v4, "rs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v3

    .line 2606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StackIF["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "calling onRefreshRegNotification"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2609
    .local v5, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    if-eqz v5, :cond_2f

    .line 2610
    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRefreshRegNotification(I)V

    .line 2612
    .end local v4    # "rs":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;
    .end local v5    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    :cond_2f
    goto/16 :goto_1d

    .line 2603
    :cond_30
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2613
    :cond_31
    const/16 v7, 0x4e28

    if-ne v2, v7, :cond_33

    .line 2614
    const-string v5, "Echolocate Notify receive"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v4

    const/16 v5, 0x38

    if-ne v4, v5, :cond_32

    .line 2616
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    invoke-direct {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;-><init>()V

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    .line 2617
    .local v4, "em":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2618
    .end local v4    # "em":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2615
    :cond_32
    move/from16 v23, v3

    goto/16 :goto_1c

    .line 2619
    :cond_33
    const/16 v7, 0x4e24

    if-ne v2, v7, :cond_34

    .line 2620
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;

    .line 2622
    .local v5, "ns":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;
    const-string v6, "ReceiveSmsNotification: "

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2625
    .end local v5    # "ns":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;
    move/from16 v23, v3

    goto/16 :goto_1c

    :cond_34
    const/16 v7, 0x4e23

    if-ne v2, v7, :cond_35

    .line 2626
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;

    .line 2628
    .local v5, "ra":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;
    const-string v6, "SmsRpAckNotification: "

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2631
    .end local v5    # "ra":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;
    move/from16 v23, v3

    goto/16 :goto_1c

    :cond_35
    const/16 v7, 0x2713

    const-string v12, "MM/dd/yyyy HH:mm:ss.SSS"

    if-ne v2, v7, :cond_46

    .line 2632
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_45

    .line 2633
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    invoke-direct {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;-><init>()V

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    .line 2634
    .local v4, "sip":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v12, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2635
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 2637
    .local v7, "timestamp":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->origin()I

    move-result v8

    if-nez v8, :cond_36

    .line 2638
    return-void

    .line 2641
    :cond_36
    const-string v8, ""

    .line 2642
    .local v8, "message":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->sipMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_37

    .line 2643
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->sipMessage()Ljava/lang/String;

    move-result-object v8

    .line 2646
    :cond_37
    const-string v9, ""

    .line 2648
    .local v9, "method":Ljava/lang/String;
    const-string v12, "\r\n"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2650
    .local v15, "lines":[Ljava/lang/String;
    array-length v12, v15

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_3a

    aget-object v14, v15, v13

    .line 2651
    .local v14, "line":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_38

    .line 2652
    move-object v9, v14

    .line 2655
    :cond_38
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v6, "cseq"

    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2656
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2657
    goto :goto_7

    .line 2650
    .end local v14    # "line":Ljava/lang/String;
    :cond_39
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    goto :goto_6

    .line 2661
    :cond_3a
    :goto_7
    invoke-direct {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2662
    .end local v9    # "method":Ljava/lang/String;
    .local v6, "method":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->phoneId()J

    move-result-wide v9

    long-to-int v9, v9

    .line 2663
    .local v9, "phoneId":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIPMSG["

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2665
    .local v10, "sipMsgTag":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v11

    if-nez v11, :cond_3b

    .line 2666
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[-->] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2668
    :cond_3b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[<--] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v11, v8}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2670
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "register"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3c

    const-string v11, "200"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 2672
    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    iget v12, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mHandle:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    :cond_3c
    :goto_8
    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    if-eqz v11, :cond_3d

    .line 2677
    invoke-interface {v11}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 2679
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v16

    .line 2680
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->hexContents()Ljava/lang/String;

    move-result-object v21

    .line 2677
    const-string v19, ""

    const-string v20, ""

    move-object v14, v8

    move-object/from16 v22, v15

    .end local v15    # "lines":[Ljava/lang/String;
    .local v22, "lines":[Ljava/lang/String;
    move v15, v11

    move/from16 v17, v9

    move-object/from16 v18, v7

    invoke-interface/range {v12 .. v21}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 2676
    .end local v22    # "lines":[Ljava/lang/String;
    .restart local v15    # "lines":[Ljava/lang/String;
    :cond_3d
    move-object/from16 v22, v15

    .line 2684
    .end local v15    # "lines":[Ljava/lang/String;
    .restart local v22    # "lines":[Ljava/lang/String;
    :goto_9
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isEngMode()Z

    move-result v11

    if-nez v11, :cond_43

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v11

    if-nez v11, :cond_3e

    move/from16 v23, v3

    goto :goto_d

    .line 2690
    :cond_3e
    const/4 v11, 0x0

    .line 2693
    .local v11, "isLoggableSipMessageForUserShipBinary":Z
    const/4 v12, 0x0

    .line 2695
    .local v12, "isUseEncryptedLogger":Z
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->isRcsProfile()Z

    move-result v13

    if-nez v13, :cond_3f

    .line 2696
    const/4 v11, 0x1

    .line 2697
    const/4 v12, 0x1

    move/from16 v20, v12

    goto :goto_a

    .line 2695
    :cond_3f
    move/from16 v20, v12

    .line 2700
    .end local v12    # "isUseEncryptedLogger":Z
    .local v20, "isUseEncryptedLogger":Z
    :goto_a
    const-string v12, ""

    .line 2701
    .local v12, "historyMessage":Ljava/lang/String;
    if-eqz v11, :cond_41

    .line 2702
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2703
    .local v13, "hidedMessage":Ljava/lang/String;
    if-eqz v20, :cond_40

    .line 2704
    invoke-static {v10, v13}, Lcom/sec/internal/log/IMSLog;->dx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v12

    goto :goto_b

    .line 2706
    :cond_40
    invoke-static {v10, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    move-object v12, v13

    move-object/from16 v21, v12

    goto :goto_b

    .line 2701
    .end local v13    # "hidedMessage":Ljava/lang/String;
    :cond_41
    move-object/from16 v21, v12

    .line 2710
    .end local v12    # "historyMessage":Ljava/lang/String;
    .local v21, "historyMessage":Ljava/lang/String;
    :goto_b
    new-instance v15, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 2711
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_42

    const/16 v16, 0x1

    goto :goto_c

    :cond_42
    const/16 v16, 0x0

    :goto_c
    const/16 v19, 0x0

    move-object v12, v15

    move-object/from16 v13, v21

    move-object v14, v6

    move/from16 v23, v3

    move-object v3, v15

    .end local v3    # "handle":I
    .local v23, "handle":I
    move-object v15, v7

    move/from16 v17, v9

    move/from16 v18, v20

    invoke-direct/range {v12 .. v19}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/sec/internal/ims/core/handler/secims/StackIF$1;)V

    .line 2710
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V

    goto :goto_f

    .line 2684
    .end local v11    # "isLoggableSipMessageForUserShipBinary":Z
    .end local v20    # "isUseEncryptedLogger":Z
    .end local v21    # "historyMessage":Ljava/lang/String;
    .end local v23    # "handle":I
    .restart local v3    # "handle":I
    :cond_43
    move/from16 v23, v3

    .line 2685
    .end local v3    # "handle":I
    .restart local v23    # "handle":I
    :goto_d
    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 2687
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_44

    move/from16 v16, v13

    goto :goto_e

    :cond_44
    const/16 v16, 0x0

    :goto_e
    const/16 v18, 0x0

    move-object v12, v3

    move-object v13, v8

    move-object v14, v6

    move-object v15, v7

    move/from16 v17, v9

    invoke-direct/range {v12 .. v18}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/sec/internal/ims/core/handler/secims/StackIF$1;)V

    .line 2686
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V

    .line 2714
    :goto_f
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2715
    .end local v4    # "sip":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "timestamp":Ljava/lang/String;
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "phoneId":I
    .end local v10    # "sipMsgTag":Ljava/lang/String;
    .end local v22    # "lines":[Ljava/lang/String;
    goto/16 :goto_1c

    .line 2632
    .end local v23    # "handle":I
    .restart local v3    # "handle":I
    :cond_45
    move/from16 v23, v3

    .end local v3    # "handle":I
    .restart local v23    # "handle":I
    goto/16 :goto_1c

    .line 2716
    .end local v23    # "handle":I
    .restart local v3    # "handle":I
    :cond_46
    move/from16 v23, v3

    move v13, v6

    .end local v3    # "handle":I
    .restart local v23    # "handle":I
    const/16 v3, 0x2722

    if-ne v2, v3, :cond_49

    .line 2717
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;

    .line 2718
    .local v3, "xcap":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 2719
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v4, v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2720
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 2722
    .local v5, "timestamp":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;->xcapMessage()Ljava/lang/String;

    move-result-object v6

    .line 2724
    .local v6, "message":Ljava/lang/String;
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2726
    .end local v6    # "message":Ljava/lang/String;
    .local v14, "message":Ljava/lang/String;
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    if-eqz v6, :cond_47

    .line 2727
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v27, 0x64

    .line 2729
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;->direction()I

    move-result v28

    .line 2727
    const-string v30, ""

    const-string v31, ""

    const-string v32, ""

    move-object/from16 v26, v14

    move-object/from16 v29, v5

    invoke-interface/range {v24 .. v32}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    :cond_47
    new-instance v15, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 2732
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;->direction()I

    move-result v6

    if-eqz v6, :cond_48

    move v10, v13

    goto :goto_10

    :cond_48
    const/4 v10, 0x0

    :goto_10
    const/4 v11, -0x1

    const/4 v12, 0x0

    const-string v8, ""

    move-object v6, v15

    move-object v7, v14

    move-object v9, v5

    invoke-direct/range {v6 .. v12}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/sec/internal/ims/core/handler/secims/StackIF$1;)V

    .line 2731
    invoke-direct {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V

    .line 2733
    .end local v3    # "xcap":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "timestamp":Ljava/lang/String;
    .end local v14    # "message":Ljava/lang/String;
    goto/16 :goto_1c

    :cond_49
    const/16 v3, 0x2723

    if-ne v2, v3, :cond_4a

    .line 2734
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;

    .line 2735
    .local v3, "gbaData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2736
    .end local v3    # "gbaData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;
    goto/16 :goto_1c

    :cond_4a
    const/16 v3, 0x4e21

    if-ne v2, v3, :cond_4d

    .line 2737
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v3

    const/16 v6, 0x48

    if-ne v3, v6, :cond_4c

    .line 2738
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;

    .line 2739
    .local v3, "alarm":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;->id()J

    move-result-wide v4

    long-to-int v4, v4

    .line 2740
    .local v4, "alarmId":I
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;->delay()J

    move-result-wide v5

    long-to-int v5, v5

    .line 2741
    .local v5, "delay":I
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

    if-eqz v6, :cond_4b

    .line 2742
    invoke-interface {v6, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;->onAlarmRequested(II)V

    .line 2744
    .end local v3    # "alarm":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;
    .end local v4    # "alarmId":I
    .end local v5    # "delay":I
    :cond_4b
    goto/16 :goto_1c

    .line 2745
    :cond_4c
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 2747
    :cond_4d
    const/16 v3, 0x4e22

    if-ne v2, v3, :cond_50

    .line 2748
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v3

    const/16 v6, 0x49

    if-ne v3, v6, :cond_4f

    .line 2749
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;

    .line 2750
    .local v3, "alarm":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;->id()J

    move-result-wide v4

    long-to-int v4, v4

    .line 2751
    .restart local v4    # "alarmId":I
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

    if-eqz v5, :cond_4e

    .line 2752
    invoke-interface {v5, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;->onAlarmCancelled(I)V

    .line 2754
    .end local v3    # "alarm":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;
    .end local v4    # "alarmId":I
    :cond_4e
    goto/16 :goto_1c

    .line 2755
    :cond_4f
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 2757
    :cond_50
    const/16 v3, 0x2afc

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2afa

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2afd

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2aff

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2afb

    if-eq v2, v3, :cond_75

    const/16 v3, 0x4a38

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2b00

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2ee1

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2ee4

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2ee5

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2ee3

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2ee2

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2af9

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2b01

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2b02

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2b03

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2b04

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2b05

    if-eq v2, v3, :cond_75

    const/16 v3, 0x2b06

    if-eq v2, v3, :cond_75

    const/16 v3, 0x4e2d

    if-eq v2, v3, :cond_75

    const/16 v3, 0x4e2c

    if-eq v2, v3, :cond_75

    const/16 v3, 0x4e2b

    if-ne v2, v3, :cond_51

    goto/16 :goto_1b

    .line 2785
    :cond_51
    const/16 v3, 0x2afe

    if-eq v2, v3, :cond_74

    const/16 v3, 0x2b07

    if-ne v2, v3, :cond_52

    goto/16 :goto_1a

    .line 2788
    :cond_52
    const/16 v3, 0x4650

    if-eq v2, v3, :cond_73

    const/16 v3, 0x4651

    if-eq v2, v3, :cond_73

    const/16 v3, 0x4653

    if-eq v2, v3, :cond_73

    const/16 v3, 0x4652

    if-eq v2, v3, :cond_73

    const/16 v3, 0x4654

    if-eq v2, v3, :cond_73

    const/16 v3, 0x4655

    if-ne v2, v3, :cond_53

    goto/16 :goto_19

    .line 2795
    :cond_53
    const/16 v3, 0x32c9

    if-eq v2, v3, :cond_72

    const/16 v3, 0x32ca

    if-eq v2, v3, :cond_72

    const/16 v3, 0x32cb

    if-eq v2, v3, :cond_72

    const/16 v3, 0x32cc

    if-ne v2, v3, :cond_54

    goto/16 :goto_18

    .line 2800
    :cond_54
    const/16 v3, 0x36b1

    if-eq v2, v3, :cond_71

    const/16 v3, 0x36b2

    if-eq v2, v3, :cond_71

    const/16 v3, 0x36b3

    if-eq v2, v3, :cond_71

    const/16 v3, 0x36b4

    if-eq v2, v3, :cond_71

    const/16 v3, 0x36b5

    if-ne v2, v3, :cond_55

    goto/16 :goto_17

    .line 2806
    :cond_55
    const/16 v3, 0x3a99

    if-ne v2, v3, :cond_56

    .line 2807
    const-string/jumbo v3, "received NOTIFY_OPTIONS_RECEIVED"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 2809
    :cond_56
    const/16 v3, 0x4e25

    if-ne v2, v3, :cond_57

    .line 2810
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;

    .line 2811
    .local v3, "de":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2812
    .end local v3    # "de":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;
    goto/16 :goto_1c

    :cond_57
    const/16 v3, 0x4e26

    if-ne v2, v3, :cond_58

    .line 2813
    const-string/jumbo v3, "received NOTIFY_X509_CERT_VERIFY_REQUEST"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;

    .line 2816
    .local v3, "request":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2818
    .local v4, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onX509CertVerifyRequested(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;)V

    .line 2819
    .end local v3    # "request":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;
    .end local v4    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    goto/16 :goto_1c

    :cond_58
    const/16 v3, 0x271c

    if-ne v2, v3, :cond_59

    .line 2820
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;

    .line 2821
    .local v3, "info":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;->calledPartyNumber()Ljava/lang/String;

    move-result-object v4

    .line 2822
    .local v4, "calledPartyNumber":Ljava/lang/String;
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2823
    .end local v3    # "info":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;
    .end local v4    # "calledPartyNumber":Ljava/lang/String;
    goto/16 :goto_1c

    :cond_59
    const/16 v3, 0x4e27

    if-ne v2, v3, :cond_5d

    .line 2824
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;

    .line 2825
    .local v3, "dnsResp":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->handle()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v4

    .line 2826
    .end local v23    # "handle":I
    .local v4, "handle":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    if-ge v5, v9, :cond_5c

    .line 2827
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2828
    .local v6, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2829
    .local v7, "ipaddrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_12
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->ipAddrListLength()I

    move-result v10

    if-ge v8, v10, :cond_5a

    .line 2830
    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->ipAddrList(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2829
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 2832
    .end local v8    # "k":I
    :cond_5a
    if-eqz v6, :cond_5b

    .line 2833
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->hostname()Ljava/lang/String;

    move-result-object v8

    .line 2834
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->port()J

    move-result-wide v10

    long-to-int v10, v10

    .line 2833
    invoke-virtual {v6, v8, v7, v10, v4}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onDnsResponse(Ljava/lang/String;Ljava/util/List;II)V

    .line 2826
    .end local v6    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    .end local v7    # "ipaddrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 2837
    .end local v3    # "dnsResp":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;
    .end local v5    # "i":I
    :cond_5c
    move v3, v4

    goto/16 :goto_1d

    .end local v4    # "handle":I
    .restart local v23    # "handle":I
    :cond_5d
    const/16 v3, 0x3e81

    if-eq v2, v3, :cond_70

    const/16 v3, 0x3e82

    if-eq v2, v3, :cond_70

    const/16 v3, 0x3e83

    if-eq v2, v3, :cond_70

    const/16 v3, 0x3e84

    if-ne v2, v3, :cond_5e

    goto/16 :goto_16

    .line 2842
    :cond_5e
    const/16 v3, 0x4269

    if-eq v2, v3, :cond_6f

    const/16 v3, 0x426a

    if-eq v2, v3, :cond_6f

    const/16 v3, 0x426b

    if-ne v2, v3, :cond_5f

    goto/16 :goto_15

    .line 2846
    :cond_5f
    const/16 v3, 0x2720

    if-ne v2, v3, :cond_60

    .line 2847
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_76

    .line 2848
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;

    .line 2849
    .local v3, "dbrEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2850
    .end local v3    # "dbrEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;
    goto/16 :goto_1c

    .line 2851
    :cond_60
    const/16 v3, 0x2721

    if-ne v2, v3, :cond_61

    .line 2852
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_76

    .line 2853
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    .line 2854
    .local v3, "rrcEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2855
    .end local v3    # "rrcEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;
    goto/16 :goto_1c

    .line 2856
    :cond_61
    const/16 v3, 0x2726

    if-ne v2, v3, :cond_62

    .line 2857
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_76

    .line 2858
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;

    .line 2859
    .local v3, "rtploss":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2860
    .end local v3    # "rtploss":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;
    goto/16 :goto_1c

    .line 2861
    :cond_62
    const/16 v3, 0x4e29

    if-ne v2, v3, :cond_64

    .line 2862
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v3

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_76

    .line 2863
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;

    .line 2864
    .local v3, "dumpMsg":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;
    const/16 v4, 0x64

    .line 2865
    .local v4, "DUMP_SIZE":I
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v12, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2867
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v6, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;

    .line 2868
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;->tag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;->value()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    .local v6, "dump":Lcom/sec/internal/ims/core/handler/secims/DumpRequest;
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v4, :cond_63

    .line 2872
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2874
    :cond_63
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mStackDumpData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2875
    .end local v3    # "dumpMsg":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;
    .end local v4    # "DUMP_SIZE":I
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v6    # "dump":Lcom/sec/internal/ims/core/handler/secims/DumpRequest;
    goto/16 :goto_1c

    .line 2876
    :cond_64
    const/16 v3, 0x2725

    if-ne v2, v3, :cond_65

    .line 2877
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v3

    const/16 v5, 0x14

    if-ne v3, v5, :cond_76

    .line 2878
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;

    .line 2879
    .local v3, "dtmfInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DTMF Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->event()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " Volume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->volume()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " Duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2881
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->duration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " Endbit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->endbit()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2879
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2884
    .end local v3    # "dtmfInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;
    goto/16 :goto_1c

    .line 2885
    :cond_65
    const/16 v3, 0x272e

    if-eq v2, v3, :cond_6e

    const/16 v3, 0x272f

    if-eq v2, v3, :cond_6e

    const/16 v3, 0x2730

    if-eq v2, v3, :cond_6e

    const/16 v3, 0x2731

    if-eq v2, v3, :cond_6e

    const/16 v3, 0x2732

    if-ne v2, v3, :cond_66

    goto/16 :goto_14

    .line 2891
    :cond_66
    const/16 v3, 0x4e2a

    if-ne v2, v3, :cond_67

    .line 2892
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v3

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_76

    .line 2893
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;

    .line 2894
    .local v3, "xqMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2895
    .end local v3    # "xqMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;
    goto/16 :goto_1c

    .line 2896
    :cond_67
    const/16 v3, 0x2728

    if-ne v2, v3, :cond_68

    .line 2897
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v3

    const/16 v5, 0x16

    if-ne v3, v5, :cond_76

    .line 2898
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;

    .line 2899
    .local v3, "textInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->text()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2900
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->len()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2899
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2902
    .end local v3    # "textInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;
    goto/16 :goto_1c

    .line 2903
    :cond_68
    const/16 v3, 0x272c

    if-ne v2, v3, :cond_6a

    .line 2904
    const-string/jumbo v3, "receive contact activated"

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;

    .line 2906
    .local v3, "ca":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;->handle()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v5

    .line 2907
    .end local v23    # "handle":I
    .local v5, "handle":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2909
    .local v4, "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    if-eqz v4, :cond_69

    .line 2910
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onContactActivated(I)V

    .line 2912
    .end local v3    # "ca":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;
    .end local v4    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    :cond_69
    move v3, v5

    goto/16 :goto_1d

    .end local v5    # "handle":I
    .restart local v23    # "handle":I
    :cond_6a
    const/16 v3, 0x272d

    if-ne v2, v3, :cond_6d

    .line 2913
    const-string/jumbo v3, "receive contact uri in reg-event"

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;

    .line 2915
    .local v3, "cu":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->handle()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v5

    .line 2917
    .end local v23    # "handle":I
    .restart local v5    # "handle":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2918
    .local v6, "contactUriList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->uriListLength()I

    move-result v9

    if-ge v7, v9, :cond_6b

    .line 2919
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->uriList(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2918
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 2922
    .end local v7    # "i":I
    :cond_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uri size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2923
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uri_list:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2922
    invoke-static {v4, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->isRegi()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v7

    .line 2926
    .local v7, "isRegi":I
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->uriType()Ljava/lang/String;

    move-result-object v8

    .line 2927
    .local v8, "contactUriType":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRegi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", contactUriType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 2930
    .restart local v4    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    if-eqz v4, :cond_6c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6c

    .line 2931
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;)V

    .line 2933
    .end local v3    # "cu":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;
    .end local v4    # "listener":Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
    .end local v6    # "contactUriList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "isRegi":I
    .end local v8    # "contactUriType":Ljava/lang/String;
    :cond_6c
    move v3, v5

    goto/16 :goto_1d

    .end local v5    # "handle":I
    .restart local v23    # "handle":I
    :cond_6d
    const/16 v3, 0x2734

    if-ne v2, v3, :cond_76

    .line 2934
    const-string/jumbo v3, "receive cmc info"

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;-><init>()V

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;

    .line 2937
    .local v3, "ci":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->handle()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v5

    .line 2939
    .end local v23    # "handle":I
    .restart local v5    # "handle":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CmcInfo - handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " sessionId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->sessionId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    move v3, v5

    goto :goto_1d

    .line 2890
    .end local v3    # "ci":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;
    .end local v5    # "handle":I
    .restart local v23    # "handle":I
    :cond_6e
    :goto_14
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1c

    .line 2845
    :cond_6f
    :goto_15
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1c

    .line 2841
    :cond_70
    :goto_16
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1c

    .line 2805
    :cond_71
    :goto_17
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXdmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1c

    .line 2799
    :cond_72
    :goto_18
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1c

    .line 2794
    :cond_73
    :goto_19
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1c

    .line 2787
    :cond_74
    :goto_1a
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1c

    .line 2783
    :cond_75
    :goto_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processNotify: IM/FT notify received "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2942
    .end local v23    # "handle":I
    .local v3, "handle":I
    :cond_76
    :goto_1c
    move/from16 v3, v23

    :goto_1d
    return-void
.end method

.method private processResponse(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;)V
    .locals 7
    .param p1, "transactionId"    # I
    .param p2, "res"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;

    .line 2264
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resid()I

    move-result v0

    .line 2265
    .local v0, "reqId":I
    const/4 v1, 0x0

    .line 2267
    .local v1, "ret":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->serialString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SECIMSJ"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processResponse: reqId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StackIF"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 2273
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 2274
    .local v2, "gr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;
    move-object v1, v2

    .line 2275
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->handle()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v4

    .line 2277
    .local v4, "handle":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processResponse: handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2278
    if-nez v4, :cond_0

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2280
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->reason()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2277
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    .end local v2    # "gr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;
    .end local v4    # "handle":I
    goto/16 :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 2283
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2284
    .local v2, "cr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;
    move-object v1, v2

    .line 2285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processCallResponse: handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->handle()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2285
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    .end local v2    # "cr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;
    goto/16 :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    .line 2288
    const-string/jumbo v2, "processSendSmsResp:"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto/16 :goto_1

    .line 2290
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    .line 2291
    const-string/jumbo v2, "processStartSessionResp:"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto/16 :goto_1

    .line 2293
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_5

    .line 2294
    const-string/jumbo v2, "processCloseSessionResp:"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto/16 :goto_1

    .line 2296
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_6

    .line 2297
    const-string/jumbo v2, "processStartMediaResp:"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartMediaResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartMediaResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto/16 :goto_1

    .line 2299
    :cond_6
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_7

    .line 2300
    const-string/jumbo v2, "processSendImMessageResp:"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto/16 :goto_1

    .line 2302
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_8

    .line 2303
    const-string/jumbo v2, "processSendImNotiResp:"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto/16 :goto_1

    .line 2305
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_9

    .line 2306
    const-string/jumbo v2, "processSendSlmResponse:"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto/16 :goto_1

    .line 2308
    :cond_9
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_a

    .line 2309
    const-string/jumbo v2, "processXdmGeneralResponse"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/XdmGeneralResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/XdmGeneralResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto/16 :goto_1

    .line 2311
    :cond_a
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/16 v4, 0xe

    if-ne v2, v4, :cond_b

    .line 2312
    const-string/jumbo v2, "processCshGeneralResponse"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto/16 :goto_1

    .line 2314
    :cond_b
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_c

    .line 2315
    const-string/jumbo v2, "processUpdateParticipantsResp"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto :goto_1

    .line 2317
    :cond_c
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_d

    .line 2318
    const-string/jumbo v2, "processSendMessageRevokeInternalResp"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto :goto_1

    .line 2320
    :cond_d
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/16 v4, 0xf

    if-ne v2, v4, :cond_e

    .line 2321
    const-string/jumbo v2, "processSendEucResponseResponse"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    goto :goto_1

    .line 2323
    :cond_e
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_10

    .line 2324
    const-string/jumbo v2, "processSipdialogGeneralResp"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;-><init>()V

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;

    .line 2326
    .local v2, "resp":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;->success()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;->sipmessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 2327
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;->sipmessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2329
    :cond_f
    const/4 v1, 0x0

    .line 2333
    .end local v2    # "resp":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;
    :cond_10
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->findAndRemoveRequest(I)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    move-result-object v2

    .line 2334
    .local v2, "ir":Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    if-eqz v2, :cond_11

    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_11

    .line 2335
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 2336
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2338
    :cond_11
    return-void
.end method

.method private ratReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I
    .locals 1
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "handle"    # J
    .param p4, "network"    # J

    .line 570
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->startRequestUpdateRat(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 571
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 572
    invoke-static {p1, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->addRat(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 573
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->endRequestUpdateRat(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method private recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V
    .locals 3
    .param p1, "sipDebugMessage"    # Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 3035
    const/16 v0, 0x64

    .line 3038
    .local v0, "HISTORY_SIZE":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 3039
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3042
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3043
    return-void
.end method

.method private requestCapabilityExchange(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/lang/String;JLjava/lang/String;)I
    .locals 16
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "handle"    # J
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "myFeatures"    # J
    .param p7, "extFeature"    # Ljava/lang/String;

    .line 1412
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCapabilityExchange: uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "extension iari "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "StackIF"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1417
    .local v6, "uriOffset":I
    const/4 v7, -0x1

    .line 1418
    .local v7, "myFeaturesOffset":I
    const/4 v8, 0x0

    .line 1419
    .local v8, "i":I
    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1420
    .local v9, "extFeatureOffset":I
    sget v10, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v10, v10

    cmp-long v10, p5, v10

    if-eqz v10, :cond_1

    .line 1421
    invoke-static/range {p5 .. p6}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object v10

    .line 1422
    .local v10, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 1423
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [I

    .line 1424
    .local v11, "featuretags":[I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 1425
    .local v13, "featureTag":Ljava/lang/Integer;
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "i":I
    .local v14, "i":I
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v11, v8

    .line 1426
    .end local v13    # "featureTag":Ljava/lang/Integer;
    move v8, v14

    goto :goto_0

    .line 1427
    .end local v14    # "i":I
    .restart local v8    # "i":I
    :cond_0
    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->createMyFeaturesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v7

    .line 1431
    .end local v10    # "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "featuretags":[I
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->startRequestOptionsCapExchange(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1432
    invoke-static/range {p1 .. p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1433
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1434
    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addExtFeature(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1435
    const/4 v10, -0x1

    if-eq v7, v10, :cond_2

    .line 1436
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addMyFeatures(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1438
    :cond_2
    const-string/jumbo v10, "requestCapabilityExchange request built"

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->endRequestOptionsCapExchange(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    return v5
.end method

.method private requestSubscribe(ILjava/util/List;ZZLjava/lang/String;ZILandroid/os/Message;)V
    .locals 16
    .param p1, "handle"    # I
    .param p3, "isAnonymousFetch"    # Z
    .param p4, "isListSubscribe"    # Z
    .param p5, "subscriptionId"    # Ljava/lang/String;
    .param p6, "isGzipEnabled"    # Z
    .param p7, "expiry"    # I
    .param p8, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;ZZ",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1558
    .local p2, "uriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v0, p5

    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1559
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v2, 0x0

    .line 1560
    .local v2, "uriListOffset":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    .line 1561
    .local v3, "urisSize":I
    if-lez v3, :cond_1

    .line 1562
    new-array v4, v3, [I

    .line 1563
    .local v4, "uriOffsets":[I
    const/4 v5, 0x0

    .line 1564
    .local v5, "index":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/util/ImsUri;

    .line 1565
    .local v7, "uri":Lcom/sec/ims/util/ImsUri;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "index":I
    .local v8, "index":I
    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    aput v9, v4, v5

    .line 1566
    .end local v7    # "uri":Lcom/sec/ims/util/ImsUri;
    move v5, v8

    goto :goto_0

    .line 1567
    .end local v8    # "index":I
    .restart local v5    # "index":I
    :cond_0
    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->createUriVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 1570
    .end local v4    # "uriOffsets":[I
    .end local v5    # "index":I
    :cond_1
    const/4 v4, -0x1

    .line 1571
    .local v4, "subscriptionIdOffset":I
    if-eqz v0, :cond_2

    .line 1572
    invoke-virtual {v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1575
    :cond_2
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->startRequestPresenceSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1576
    move/from16 v5, p1

    int-to-long v6, v5

    invoke-static {v1, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1577
    move/from16 v6, p3

    invoke-static {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addIsAnonymous(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1578
    move/from16 v7, p4

    invoke-static {v1, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addIsListSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1580
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 1581
    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addSubscriptionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1584
    :cond_3
    move/from16 v8, p6

    invoke-static {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addGzipEnable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1586
    if-lez v3, :cond_4

    .line 1587
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1590
    :cond_4
    move/from16 v9, p7

    int-to-long v10, v9

    invoke-static {v1, v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addExpires(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1592
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->endRequestPresenceSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v10

    .line 1593
    .local v10, "requestPresenceSubscribe":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1594
    const/16 v11, 0x2c7

    invoke-static {v1, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1595
    const/16 v11, 0x40

    invoke-static {v1, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1596
    invoke-static {v1, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1597
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    .line 1598
    .local v11, "requestOffSet":I
    move-object/from16 v12, p0

    move-object/from16 v13, p8

    invoke-direct {v12, v1, v11, v13}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 1600
    const-string v14, "StackIF"

    const-string/jumbo v15, "requestSubscribe: sent"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    return-void
.end method

.method private send(Lcom/sec/internal/ims/core/handler/secims/ImsRequest;)V
    .locals 5
    .param p1, "ir"    # Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 547
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mBuffer:[B

    monitor-enter v1

    .line 548
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->getReqBuffer()Lcom/google/flatbuffers/FlatBufferBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object v0

    .line 549
    .local v0, "buffer":[B
    const-string v2, "SECIMSJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mTid:I

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->serialString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    array-length v2, v0

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->processCommandBuffer([BI)V

    .line 551
    .end local v0    # "buffer":[B
    monitor-exit v1

    .line 552
    return-void

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 545
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "requestOffSet"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 589
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->startImsBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 592
    .local v0, "trId":I
    int-to-long v1, v0

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->addTrid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 594
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->addMsgType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 597
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->addMsg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 600
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->endImsBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 603
    .local v1, "orc":I
    invoke-virtual {p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 605
    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->obtain(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Message;)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    move-result-object v2

    .line 606
    .local v2, "ir":Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    iput v0, v2, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mTid:I

    .line 607
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->send(Lcom/sec/internal/ims/core/handler/secims/ImsRequest;)V

    .line 608
    return-void
.end method

.method private sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .param p2, "result"    # Landroid/os/Message;

    .line 584
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->getBuilder()Lcom/google/flatbuffers/FlatBufferBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->getOffset()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 585
    return-void
.end method

.method private serialString(I)Ljava/lang/String;
    .locals 7
    .param p1, "serial"    # I

    .line 2946
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2949
    .local v0, "sb":Ljava/lang/StringBuilder;
    int-to-long v1, p1

    const-wide/32 v3, -0x80000000

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    rem-long/2addr v1, v3

    .line 2951
    .local v1, "adjustedSerial":J
    int-to-long v5, p1

    rem-long/2addr v5, v3

    .line 2954
    .end local v1    # "adjustedSerial":J
    .local v5, "adjustedSerial":J
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 2957
    .local v1, "sn":Ljava/lang/String;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2958
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "s":I
    :goto_0
    rsub-int/lit8 v4, v3, 0x4

    if-ge v2, v4, :cond_0

    .line 2959
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2958
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2962
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2964
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updatePaniReq(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/util/List;)I
    .locals 4
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "handle"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 555
    .local p4, "panis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 556
    .local v0, "paniOffset":I
    const/4 v1, -0x1

    .line 557
    .local v1, "lastPaniOffset":I
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 558
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 560
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->startRequestUpdatePani(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 561
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 562
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->addPani(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 563
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 564
    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->addLastPani(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 566
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->endRequestUpdatePani(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public acceptCallTransfer(IIZILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "accept"    # Z
    .param p4, "status"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .line 1829
    const-string v0, "StackIF"

    const-string v1, "acceptTransferCall:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeAcceptCallTransfer(IIZILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1832
    return-void
.end method

.method public answerCall(IIILjava/lang/String;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "callType"    # I
    .param p4, "cmcCallTime"    # Ljava/lang/String;

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answerCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmcCallTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeAnswerCall(IIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1723
    return-void
.end method

.method public cancelTransferCall(IILandroid/os/Message;)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1817
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeCancelTransferCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1818
    return-void
.end method

.method public clearAllCallInternal(I)V
    .locals 2
    .param p1, "cmcType"    # I

    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAllCallInternal: cmcType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeClearAllCallInternal(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1993
    return-void
.end method

.method public conference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "confuri"    # Ljava/lang/String;
    .param p3, "callType"    # I
    .param p4, "eventSubscribe"    # Ljava/lang/String;
    .param p5, "dialogType"    # Ljava/lang/String;
    .param p6, "participants"    # [Ljava/lang/String;
    .param p7, "origUri"    # Ljava/lang/String;
    .param p8, "referUriType"    # Ljava/lang/String;
    .param p9, "removeReferUriType"    # Ljava/lang/String;
    .param p10, "referUriAsserted"    # Ljava/lang/String;
    .param p11, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p12, "supportPrematureEnd"    # Z
    .param p13, "result"    # Landroid/os/Message;

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conference: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " confUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " subscribe "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dialogType "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " origUri "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    invoke-static {p7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " useAnonymousUpdate "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1782
    const-string v6, "StackIF"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "participants: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-static/range {p1 .. p12}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeConference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    move-object v6, p0

    move-object/from16 v7, p13

    invoke-direct {p0, v0, v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1789
    return-void
.end method

.method configCall(IZZZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "ttySessionRequired"    # Z
    .param p3, "rttSessionRequired"    # Z
    .param p4, "automode"    # Z

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configCall: ttySessionRequired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rttSessionRequired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " automode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1905
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigCall(IZZZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1906
    return-void
.end method

.method public configRCS(ILcom/sec/internal/constants/ims/config/RcsConfig;)V
    .locals 17
    .param p1, "phoneId"    # I
    .param p2, "config"    # Lcom/sec/internal/constants/ims/config/RcsConfig;

    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configRCS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StackIF"

    move/from16 v15, p1

    invoke-static {v2, v15, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1928
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getFtChunkSize()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getIshChunkSize()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getConfUri()Ljava/lang/String;

    move-result-object v6

    .line 1929
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->isMsrpCema()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getDownloadsPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->isConfSubscribeEnabled()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getExploderUri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getPagerModeLimit()I

    move-result v11

    .line 1930
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->isUseMsrpDiscardPort()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->isAggrImdnSupported()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->isPrivacyDisable()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getCbMsgTech()I

    move-result v0

    .line 1931
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/config/RcsConfig;->getEndUserConfReqId()Ljava/lang/String;

    move-result-object v16

    .line 1928
    move/from16 v3, p1

    move v15, v0

    invoke-static/range {v3 .. v16}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigRCS(IIILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;IZZZILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1932
    return-void
.end method

.method public configRCSOff(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "suspenduser"    # Ljava/lang/String;

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configRCS: suspenduser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigRCSOff(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1923
    return-void
.end method

.method public configRegistration(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "imei"    # Ljava/lang/String;

    .line 1951
    if-nez p2, :cond_0

    .line 1952
    const-string v0, "StackIF"

    const-string v1, "configRegistration: no imei"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1953
    return-void

    .line 1956
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigRegistration(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1957
    return-void
.end method

.method public configSrvcc(II)V
    .locals 3
    .param p1, "phone_id"    # I
    .param p2, "version"    # I

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configSrvcc():  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigSrvcc(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1912
    return-void
.end method

.method public createUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Landroid/os/Message;)V
    .locals 2
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .param p2, "result"    # Landroid/os/Message;

    .line 614
    const-string v0, "StackIF"

    const-string v1, "createUA:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeCreateUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 616
    return-void
.end method

.method public deleteTcpClientSocket(I)V
    .locals 4
    .param p1, "handle"    # I

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteTcpClientSocket: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1698
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDeleteTcpClientSocket;->startRequestDeleteTcpClientSocket(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1699
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDeleteTcpClientSocket;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1700
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDeleteTcpClientSocket;->endRequestDeleteTcpClientSocket(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1701
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1702
    const/16 v2, 0x514

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1703
    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1704
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1706
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1708
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 1709
    return-void
.end method

.method public deleteUA(ILandroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUA: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeDeleteUA(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 624
    return-void
.end method

.method public deregister(IZLandroid/os/Message;)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "local"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregister: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1646
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->startRequestRegistration(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1647
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1648
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addPcscfPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1649
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addRegExp(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1650
    xor-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addIsExplicitDeregi(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1651
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->endRequestRegistration(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1653
    .local v1, "regReqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1654
    const/16 v2, 0x68

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1655
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1656
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1658
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1660
    .local v2, "requestOffSet":I
    invoke-direct {p0, v0, v2, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 1661
    return-void
.end method

.method public dump()V
    .locals 5

    .line 3046
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->checkLogEnable()Z

    move-result v0

    const-string v1, "StackIF"

    if-eqz v0, :cond_1

    .line 3047
    const-string v0, "Dump of IMS Stack:"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3048
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 3049
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mStackDumpData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;

    .line 3050
    .local v3, "dump":Lcom/sec/internal/ims/core/handler/secims/DumpRequest;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3051
    .end local v3    # "dump":Lcom/sec/internal/ims/core/handler/secims/DumpRequest;
    goto :goto_0

    .line 3052
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 3055
    :cond_1
    const-string v0, "Dump of IMS SIP messages history:"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 3057
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 3058
    .local v2, "sip":Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->access$200(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3059
    .end local v2    # "sip":Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;
    goto :goto_1

    .line 3060
    :cond_2
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 3062
    const-string v0, "Dump of IMS log data:"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 3064
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->dumpSecretKey(Ljava/lang/String;)V

    .line 3065
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 3067
    return-void
.end method

.method public endCall(IILcom/sec/internal/constants/ims/SipReason;Landroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "reason"    # Lcom/sec/internal/constants/ims/SipReason;
    .param p4, "result"    # Landroid/os/Message;

    .line 1712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeEndCall(IILcom/sec/internal/constants/ims/SipReason;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1716
    return-void
.end method

.method public extendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "confuri"    # Ljava/lang/String;
    .param p3, "callType"    # I
    .param p4, "eventSubscribe"    # Ljava/lang/String;
    .param p5, "dialogType"    # Ljava/lang/String;
    .param p6, "participants"    # [Ljava/lang/String;
    .param p7, "sessId"    # I
    .param p8, "origUri"    # Ljava/lang/String;
    .param p9, "referUriType"    # Ljava/lang/String;
    .param p10, "removeReferUriType"    # Ljava/lang/String;
    .param p11, "referUriAsserted"    # Ljava/lang/String;
    .param p12, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p13, "supportPrematureEnd"    # Z

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendToConfCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " confUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subscribe "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dialogType "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " currSession "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p7

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "StackIF"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "participants: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-static/range {p1 .. p13}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeExtendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-direct {p0, v0, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1803
    return-void
.end method

.method public handleCmcCsfb(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I

    .line 1899
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHandleCmcCsfb(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1900
    return-void
.end method

.method public handleDtmf(IIIIILandroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "code"    # I
    .param p4, "mode"    # I
    .param p5, "operation"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmf: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHandleDtmf(IIIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1838
    return-void
.end method

.method public holdCall(IILandroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHoldCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1729
    return-void
.end method

.method public holdVideo(IILandroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdVideo: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHoldVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1741
    return-void
.end method

.method public initCmcJni(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cmcJni"    # Ljava/lang/Object;

    .line 341
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->initCmc(Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method public initMediaJni(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mediaJni"    # Ljava/lang/Object;

    .line 337
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->initStack(Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method public makeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/Message;)V
    .locals 13
    .param p1, "handle"    # I
    .param p2, "destUri"    # Ljava/lang/String;
    .param p3, "origUri"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "dispName"    # Ljava/lang/String;
    .param p6, "dialedNumber"    # Ljava/lang/String;
    .param p7, "ecscf"    # Ljava/lang/String;
    .param p8, "port"    # I
    .param p9, "ac"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .param p10, "cli"    # Ljava/lang/String;
    .param p11, "pEmergencyInfoOfAtt"    # Ljava/lang/String;
    .param p13, "alertInfo"    # Ljava/lang/String;
    .param p14, "isLteEpsOnlyAttached"    # Z
    .param p16, "cmcBoundSessionId"    # I
    .param p17, "composerData"    # Landroid/os/Bundle;
    .param p18, "replaceCallId"    # Ljava/lang/String;
    .param p19, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1624
    .local p12, "additionalSipHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p15, "p2p":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " origUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dispName "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ecscf "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cli "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " PEmergencyInfoOfAtt "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p11

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " alertInfo "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p13

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isLteEpsOnlyAttached "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p14

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " p2p "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    if-eqz p15, :cond_0

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    const-string v9, "null"

    :goto_0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " cmcBoundSessionId "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " replaceCallId "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1624
    const-string v11, "StackIF"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-static/range {p1 .. p18}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeMakeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    move-object v11, p0

    move-object/from16 v12, p19

    invoke-direct {p0, v0, v12}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1636
    return-void
.end method

.method public mergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V
    .locals 13
    .param p1, "handle"    # I
    .param p2, "sessionId1"    # I
    .param p3, "sessionId2"    # I
    .param p4, "confUri"    # Ljava/lang/String;
    .param p5, "callType"    # I
    .param p6, "eventSubscribe"    # Ljava/lang/String;
    .param p7, "dialogType"    # Ljava/lang/String;
    .param p8, "origUri"    # Ljava/lang/String;
    .param p9, "referUriType"    # Ljava/lang/String;
    .param p10, "removeReferUriType"    # Ljava/lang/String;
    .param p11, "referUriAsserted"    # Ljava/lang/String;
    .param p12, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p13, "supportPrematureEnd"    # Z
    .param p15, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
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
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1765
    .local p14, "extraHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " session1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " session2 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " confUri "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callType "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eventSubscribe "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dialogType "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " origUri "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    invoke-static/range {p8 .. p8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " referUriType "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " removeReferUriType "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p10

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " referUseAsserted "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p11

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " useAnonymousUpdate "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p12

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1765
    const-string v11, "StackIF"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    invoke-static/range {p1 .. p14}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeMergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    move-object v11, p0

    move-object/from16 v12, p15

    invoke-direct {p0, v0, v12}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1776
    return-void
.end method

.method public modifyCallType(III)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "oldType"    # I
    .param p3, "newType"    # I

    .line 1847
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

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeModifyCallType(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1851
    return-void
.end method

.method public modifyVideoQuality(III)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "oldQual"    # I
    .param p3, "newQual"    # I

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyVideoQuality(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldQual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newQual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeModifyVideoQuality(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1858
    return-void
.end method

.method public networkSuspended(IZ)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "state"    # Z

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "register: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeNetworkSuspended(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 645
    return-void
.end method

.method public openSipDialog(Z)V
    .locals 4
    .param p1, "isRequired"    # Z

    .line 928
    const-string v0, "StackIF"

    const-string/jumbo v1, "openSipDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 933
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOpenSipDialog;->startRequestOpenSipDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 934
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOpenSipDialog;->addIsRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 935
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOpenSipDialog;->endRequestOpenSipDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 938
    .local v1, "openSipDialogOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 939
    const/16 v2, 0x4b1

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 940
    const/16 v2, 0x67

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 941
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 942
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 944
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 945
    return-void
.end method

.method public progressIncomingCall(IILjava/util/HashMap;Landroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p4, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1688
    .local p3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "progressIncomingCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeProgressIncomingCall(IILjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1691
    return-void
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "origUri"    # Ljava/lang/String;
    .param p3, "dispName"    # Ljava/lang/String;
    .param p4, "xmlBody"    # Ljava/lang/String;
    .param p5, "expireTime"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 1825
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makePublishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1826
    return-void
.end method

.method public pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Landroid/os/Message;)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "pullingUri"    # Ljava/lang/String;
    .param p3, "targetUri"    # Ljava/lang/String;
    .param p4, "origUri"    # Ljava/lang/String;
    .param p5, "targetDialog"    # Lcom/sec/ims/Dialog;
    .param p6, "result"    # Landroid/os/Message;

    .line 1821
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makePullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1822
    return-void
.end method

.method public register(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "pcscfAddr"    # Ljava/lang/String;
    .param p3, "pcscfPort"    # I
    .param p4, "regExpires"    # I
    .param p7, "ownCap"    # Lcom/sec/ims/options/Capabilities;
    .param p9, "accessToken"    # Ljava/lang/String;
    .param p10, "authServerUrl"    # Ljava/lang/String;
    .param p11, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 631
    .local p5, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "thirdPartyFeatureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "register: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pcscfAddr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mHandle:I

    .line 635
    invoke-static/range {p1 .. p10}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeRegister(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p11}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 636
    return-void
.end method

.method public registerCallStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 367
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerCallStatusEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    return-void
.end method

.method public registerCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 470
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerCdpnInfoEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 473
    return-void
.end method

.method public registerCmcInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 526
    return-void
.end method

.method public registerCmcRecordEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 409
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerCmcRecordEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 412
    return-void
.end method

.method public registerConferenceUpdateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 415
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerConferenceUpdateEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    return-void
.end method

.method public registerDedicatedBearerEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 484
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerDedicatedBearerEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 487
    return-void
.end method

.method public registerDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 465
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerDialogEvent: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 467
    return-void
.end method

.method public registerDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 374
    return-void
.end method

.method public registerEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 495
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerEcholocateEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 498
    return-void
.end method

.method public registerEucrEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 516
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerEucrEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 518
    return-void
.end method

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 490
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerForRrcConnectionEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 492
    return-void
.end method

.method public registerImHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 444
    return-void
.end method

.method public registerImdnHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 448
    return-void
.end method

.method public registerIshEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 477
    return-void
.end method

.method public registerMiscListener(Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

    .line 534
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

    .line 535
    return-void
.end method

.method public registerModifyCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 391
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerModifyCallEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 394
    return-void
.end method

.method public registerModifyVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 397
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerModifyVideoEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 400
    return-void
.end method

.method public registerNewIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 385
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerNewIncomingCallEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 388
    return-void
.end method

.method public registerNewIncomingSmsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 421
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerNewIncomingSmsEvent: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    return-void
.end method

.method public registerOptionsHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 460
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerOptionsHandler: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 462
    return-void
.end method

.method public registerPresenceEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 455
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerPresenceEvent: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 457
    return-void
.end method

.method public registerRawSipEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 501
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerRawSipEvent: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 503
    return-void
.end method

.method public registerReferReceivedEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 433
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerReferReceivedEvent: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    return-void
.end method

.method public registerReferStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    return-void
.end method

.method public registerRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 511
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerRtpLossRate : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 513
    return-void
.end method

.method public registerSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 382
    return-void
.end method

.method public registerSSEventRegistrants(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 506
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerRawSipEvent: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 508
    return-void
.end method

.method public registerSlmHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 452
    return-void
.end method

.method public registerSmsRpAckEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 427
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerSmsRpAckEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 430
    return-void
.end method

.method public registerTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 378
    return-void
.end method

.method public registerUaListener(ILcom/sec/internal/ims/core/handler/secims/StackEventListener;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "listener"    # Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerUaListener Handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-void
.end method

.method public registerVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 403
    const-string v0, "StackIF"

    const-string/jumbo v1, "registerVideoEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 406
    return-void
.end method

.method public registerVshEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 481
    return-void
.end method

.method public registerXqMtrip(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 522
    return-void
.end method

.method public rejectCall(IILcom/sec/ims/util/SipError;Landroid/os/Message;)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "response"    # Lcom/sec/ims/util/SipError;
    .param p4, "result"    # Landroid/os/Message;

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rejectCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1670
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1671
    .local v1, "respOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->startRequestRejectCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1672
    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1673
    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->addStatusCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1674
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->addReasonPhrase(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1675
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->endRequestRejectCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1677
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1678
    const/16 v3, 0xd6

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1679
    const/16 v3, 0x15

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1680
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1682
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1684
    .local v3, "requestOffSet":I
    invoke-direct {p0, v0, v3, p4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 1685
    return-void
.end method

.method public rejectModifyCallType(II)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I

    .line 1869
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

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeRejectModifyCallType(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1872
    return-void
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "reqType"    # I
    .param p3, "curType"    # I
    .param p4, "repType"    # I
    .param p5, "cmcCallTime"    # Ljava/lang/String;

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replyModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmcCallTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeReplyModifyCallType(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1866
    return-void
.end method

.method public requestOptionsReqCapabilityExchange(ILjava/lang/String;JLjava/lang/String;)V
    .locals 12
    .param p1, "handle"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "myFeatures"    # J
    .param p5, "extFeature"    # Ljava/lang/String;

    .line 1325
    move v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOptionsReqCapabilityExchange: uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1325
    const-string v2, "StackIF"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1329
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    int-to-long v6, v0

    move-object v4, p0

    move-object v5, v1

    move-object v8, p2

    move-wide v9, p3

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v11}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestCapabilityExchange(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/lang/String;JLjava/lang/String;)I

    move-result v3

    .line 1331
    .local v3, "capexReq":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1332
    const/16 v4, 0x2ef

    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1333
    const/16 v4, 0x4d

    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1334
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1335
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 1336
    .local v4, "requestOffSet":I
    const/4 v5, 0x0

    move-object v6, p0

    invoke-direct {p0, v1, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 1338
    const-string/jumbo v5, "requestOptionsReqCapabilityExchange: sent"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void
.end method

.method public requestOptionsReqSendCmcCheckMsg(ILjava/lang/String;)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestOptionsReqSendCmcCheckMsg: uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1346
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1347
    .local v2, "uriOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->startRequestOptionsSendCmcCheckMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1348
    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1349
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1351
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->endRequestOptionsSendCmcCheckMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1352
    .local v3, "capexReq":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1353
    const/16 v4, 0x2f1

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1354
    const/16 v4, 0x4e

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1355
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1356
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 1358
    .local v4, "requestOffSet":I
    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 1359
    const-string/jumbo v5, "requestOptionsReqSendCmcCheckMsg: sent"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    return-void
.end method

.method public requestPublish(ILcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V
    .locals 17
    .param p1, "handle"    # I
    .param p2, "presenceInfo"    # Lcom/sec/ims/presence/PresenceInfo;
    .param p3, "result"    # Landroid/os/Message;

    .line 1229
    move-object/from16 v0, p0

    const-string v1, "StackIF"

    const-string/jumbo v2, "request publish enter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1231
    .local v2, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v3, 0x0

    .line 1233
    .local v3, "index":I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getDeviceList()Ljava/util/List;

    move-result-object v4

    .line 1234
    .local v4, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/DeviceTuple;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v5

    .line 1235
    .local v5, "serviceList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/ServiceTuple;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getPersonList()Ljava/util/List;

    move-result-object v6

    .line 1239
    .local v6, "personList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/PersonTuple;>;"
    const/4 v7, -0x1

    .line 1240
    .local v7, "deviceTupleOffset":I
    const/4 v8, -0x1

    .line 1241
    .local v8, "serviceTupleOffset":I
    const/4 v9, -0x1

    .line 1244
    .local v9, "personTupleOffset":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 1245
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I

    .line 1246
    .local v10, "personTuples":[I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/presence/PersonTuple;

    .line 1247
    .local v12, "personTuple":Lcom/sec/ims/presence/PersonTuple;
    add-int/lit8 v13, v3, 0x1

    .end local v3    # "index":I
    .local v13, "index":I
    invoke-direct {v0, v2, v12}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->createPersonTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/PersonTuple;)I

    move-result v14

    aput v14, v10, v3

    .line 1248
    .end local v12    # "personTuple":Lcom/sec/ims/presence/PersonTuple;
    move v3, v13

    goto :goto_0

    .line 1249
    .end local v13    # "index":I
    .restart local v3    # "index":I
    :cond_0
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createPersonTuplesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v9

    .line 1251
    .end local v10    # "personTuples":[I
    :cond_1
    const/4 v3, 0x0

    .line 1252
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 1253
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I

    .line 1254
    .local v10, "deviceTuples":[I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/presence/DeviceTuple;

    .line 1255
    .local v12, "deviceTuple":Lcom/sec/ims/presence/DeviceTuple;
    add-int/lit8 v13, v3, 0x1

    .end local v3    # "index":I
    .restart local v13    # "index":I
    invoke-direct {v0, v2, v12}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->createDeviceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/DeviceTuple;)I

    move-result v14

    aput v14, v10, v3

    .line 1256
    .end local v12    # "deviceTuple":Lcom/sec/ims/presence/DeviceTuple;
    move v3, v13

    goto :goto_1

    .line 1257
    .end local v13    # "index":I
    .restart local v3    # "index":I
    :cond_2
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createDeviceTuplesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v7

    .line 1260
    .end local v10    # "deviceTuples":[I
    :cond_3
    const/4 v3, 0x0

    .line 1261
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 1262
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I

    .line 1263
    .local v10, "serviceTuples":[I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/ims/presence/ServiceTuple;

    .line 1264
    .local v12, "serviceTuple":Lcom/sec/ims/presence/ServiceTuple;
    add-int/lit8 v13, v3, 0x1

    .end local v3    # "index":I
    .restart local v13    # "index":I
    invoke-direct {v0, v2, v12}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->createServiceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/ServiceTuple;)I

    move-result v14

    aput v14, v10, v3

    .line 1265
    .end local v12    # "serviceTuple":Lcom/sec/ims/presence/ServiceTuple;
    move v3, v13

    goto :goto_2

    .line 1266
    .end local v13    # "index":I
    .restart local v3    # "index":I
    :cond_4
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createServiceTuplesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v8

    .line 1270
    .end local v10    # "serviceTuples":[I
    :cond_5
    const/4 v10, -0x1

    .line 1271
    .local v10, "ETagOffset":I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getEtag()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 1272
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getEtag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1275
    :cond_6
    const/4 v11, -0x1

    .line 1276
    .local v11, "UriOffset":I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 1277
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1280
    :cond_7
    const/4 v12, -0x1

    .line 1281
    .local v12, "TimestampOffset":I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_8

    .line 1282
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1285
    :cond_8
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->startRequestPresencePublish(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1286
    const/4 v13, -0x1

    if-ne v8, v13, :cond_9

    .line 1287
    return-void

    .line 1289
    :cond_9
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addServiceTuples(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1291
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getEtag()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 1292
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addETag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1294
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getExpireTime()J

    move-result-wide v14

    invoke-static {v2, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addExpireTime(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1295
    if-eq v12, v13, :cond_b

    .line 1296
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1298
    :cond_b
    if-eq v9, v13, :cond_c

    .line 1299
    invoke-static {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addPersonTuples(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1301
    :cond_c
    if-eq v7, v13, :cond_d

    .line 1302
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addDeviceTuples(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1305
    :cond_d
    if-eq v11, v13, :cond_e

    .line 1306
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1308
    :cond_e
    move/from16 v13, p1

    int-to-long v14, v13

    invoke-static {v2, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1309
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/presence/PresenceInfo;->getPublishGzipEnabled()Z

    move-result v14

    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addGzipEnable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1311
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->endRequestPresencePublish(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v14

    .line 1312
    .local v14, "requestPresencePublish":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1313
    const/16 v15, 0x2bd

    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1314
    const/16 v15, 0x3e

    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1315
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1316
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v15

    .line 1317
    .local v15, "requestOffSet":I
    move/from16 v16, v3

    move-object/from16 v3, p3

    .end local v3    # "index":I
    .local v16, "index":I
    invoke-direct {v0, v2, v15, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 1319
    const-string/jumbo v0, "requestPublish: sent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    return-void
.end method

.method public requestSubscribe(ILcom/sec/ims/util/ImsUri;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "handle"    # I
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "isAnonymousFetch"    # Z
    .param p4, "subscriptionId"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .line 1542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    .local v0, "uriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move v4, p3

    move-object v6, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribe(ILjava/util/List;ZZLjava/lang/String;ZILandroid/os/Message;)V

    .line 1546
    return-void
.end method

.method public requestSubscribeList(ILjava/util/List;ZLjava/lang/String;ZILandroid/os/Message;)V
    .locals 9
    .param p1, "handle"    # I
    .param p3, "isAnonymousFetch"    # Z
    .param p4, "subscriptionId"    # Ljava/lang/String;
    .param p5, "isGzipEnabled"    # Z
    .param p6, "expiry"    # I
    .param p7, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1551
    .local p2, "uriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribe(ILjava/util/List;ZZLjava/lang/String;ZILandroid/os/Message;)V

    .line 1553
    return-void
.end method

.method public requestUnpublish(I)V
    .locals 5
    .param p1, "handle"    # I

    .line 1604
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1605
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceUnpublish;->startRequestPresenceUnpublish(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1606
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceUnpublish;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1607
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceUnpublish;->endRequestPresenceUnpublish(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1608
    .local v1, "requestPresenceUnpublish":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1609
    const/16 v2, 0x2be

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1610
    const/16 v2, 0x3f

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1611
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1612
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1613
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 1615
    const-string v3, "StackIF"

    const-string/jumbo v4, "requestUnpublish: sent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    return-void
.end method

.method public requestUpdateFeatureTag(IJ)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "features"    # J

    .line 954
    const-string v0, "StackIF"

    const-string/jumbo v1, "requestUpdateFeatureTag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeRequestUpdateFeatureTag(IJ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 957
    return-void
.end method

.method public resumeCall(IILandroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeResumeCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1735
    return-void
.end method

.method public resumeVideo(IILandroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeVideo: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeResumeVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1746
    return-void
.end method

.method public send(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V
    .locals 3
    .param p1, "resipRequest"    # Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    .line 539
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mRequest:Lcom/google/flatbuffers/FlatBufferBuilder;

    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mOffset:I

    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 540
    return-void
.end method

.method public sendAlarmWakeUp(I)V
    .locals 4
    .param p1, "id"    # I

    .line 2096
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2098
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAlarmWakeUp;->startRequestAlarmWakeUp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2099
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAlarmWakeUp;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2100
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAlarmWakeUp;->endRequestAlarmWakeUp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 2102
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2103
    const/16 v2, 0x385

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2104
    const/16 v2, 0x6b

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2105
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2107
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 2109
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 2110
    return-void
.end method

.method public sendAuthResponse(IILjava/lang/String;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "tid"    # I
    .param p3, "response"    # Ljava/lang/String;

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAuthResponse: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSendAuthResponse(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 654
    return-void
.end method

.method public sendCapexResponse(ILjava/lang/String;JLjava/lang/String;ILandroid/os/Message;Ljava/lang/String;)I
    .locals 19
    .param p1, "handle"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "myFeatures"    # J
    .param p5, "txId"    # Ljava/lang/String;
    .param p6, "lastSeen"    # I
    .param p7, "result"    # Landroid/os/Message;
    .param p8, "extFeature"    # Ljava/lang/String;

    .line 1364
    move/from16 v0, p1

    move-object/from16 v1, p5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCapexResponse: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StackIF"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1366
    return v2

    .line 1368
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendCapexResponse: uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "transaction Id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1370
    .local v4, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    move-object/from16 v6, p2

    invoke-virtual {v4, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 1371
    .local v7, "uriOffset":I
    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1372
    .local v8, "txIdOffset":I
    move-object/from16 v9, p8

    invoke-virtual {v4, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1375
    .local v10, "extFeatureOffset":I
    const/4 v11, -0x1

    .line 1376
    .local v11, "myFeaturesOffset":I
    const/4 v12, 0x0

    .line 1378
    .local v12, "i":I
    sget v13, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v13, v13

    cmp-long v13, p3, v13

    if-eqz v13, :cond_2

    .line 1379
    invoke-static/range {p3 .. p4}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object v13

    .line 1380
    .local v13, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 1381
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [I

    .line 1382
    .local v14, "featuretags":[I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 1383
    .local v16, "featureTag":Ljava/lang/Integer;
    add-int/lit8 v17, v12, 0x1

    .end local v12    # "i":I
    .local v17, "i":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v14, v12

    .line 1384
    .end local v16    # "featureTag":Ljava/lang/Integer;
    move/from16 v12, v17

    goto :goto_0

    .line 1385
    .end local v17    # "i":I
    .restart local v12    # "i":I
    :cond_1
    invoke-static {v4, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->createMyFeaturesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v11

    .line 1389
    .end local v13    # "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "featuretags":[I
    :cond_2
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->startRequestOptionsSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1390
    int-to-long v13, v0

    invoke-static {v4, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1391
    invoke-static {v4, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1392
    move/from16 v13, p6

    invoke-static {v4, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addLastSeen(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1393
    if-eq v11, v2, :cond_3

    .line 1394
    invoke-static {v4, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addMyFeatures(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1396
    :cond_3
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addTxId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1397
    invoke-static {v4, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addExtFeature(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1398
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->endRequestOptionsSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1399
    .local v2, "requestOptionsSendResponseOffset":I
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1400
    const/16 v14, 0x2f0

    invoke-static {v4, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1401
    const/16 v14, 0x4c

    invoke-static {v4, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1402
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1403
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v14

    .line 1404
    .local v14, "requestOffSet":I
    move-object/from16 v15, p0

    move-object/from16 v5, p7

    invoke-direct {v15, v4, v14, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 1405
    const-string/jumbo v0, "sendCapexResponse: sent"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const/4 v0, 0x0

    return v0
.end method

.method public sendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "ac"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    .line 1885
    const-string v0, "StackIF"

    const-string/jumbo v1, "sendCmcInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1888
    return-void
.end method

.method public sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "intf"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "transport"    # Ljava/lang/String;
    .param p7, "family"    # Ljava/lang/String;
    .param p8, "netId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 948
    .local p4, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dnsQueryByNaptr: hostnames "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dnsservers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transport "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " family "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-static/range {p1 .. p9}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 951
    return-void
.end method

.method public sendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "callType"    # I
    .param p4, "ussdType"    # I
    .param p5, "ac"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .param p6, "result"    # Landroid/os/Message;

    .line 1879
    const-string v0, "StackIF"

    const-string/jumbo v1, "sendInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1882
    return-void
.end method

.method public sendMediaEvent(IIII)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "target"    # I
    .param p3, "event"    # I
    .param p4, "eventType"    # I

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendMediaEvent(): target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2146
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->startRequestSendMediaEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2147
    int-to-long v1, p4

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addEventType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2148
    int-to-long v1, p3

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2149
    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addTarget(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2150
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2151
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->endRequestSendMediaEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 2154
    .local v1, "sendMediaEventOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2155
    const/4 v2, 0x1

    if-ne p4, v2, :cond_1

    if-eqz p2, :cond_0

    if-ne p2, v2, :cond_1

    .line 2156
    :cond_0
    const/16 v2, 0xec

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_0

    .line 2158
    :cond_1
    const/16 v2, 0xe6

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2160
    :goto_0
    const/16 v2, 0x4a

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2161
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2162
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 2164
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 2165
    return-void
.end method

.method public sendRelayEvent(II)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "event"    # I

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendRelayEvent(): stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2173
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->startRequestSendRelayEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2174
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->addStreamId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2175
    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2176
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->endRequestSendRelayEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 2179
    .local v1, "sendRelayEventOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2180
    const/16 v2, 0xed

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2181
    const/16 v2, 0x4b

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2182
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2183
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 2185
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 2186
    return-void
.end method

.method public sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 4
    .param p1, "rtpStats"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 2195
    const-string v0, "StackIF"

    const-string/jumbo v1, "sendRtpStatsToStack()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2200
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->startRequestRtpStatsToStack(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2201
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mDirection:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addDirection(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2202
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mMeasuredPeriod:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addMeasuredperiod(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2203
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mJitter:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addJitter(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2204
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mDelay:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addDelay(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2205
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mLossData:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addLossrate(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2206
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mChannelId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addChannelid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2207
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->endRequestRtpStatsToStack(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 2210
    .local v1, "sendRtpStatsToStackOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2211
    const/16 v2, 0x388

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2212
    const/16 v2, 0x65

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2213
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2214
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 2216
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 2217
    return-void
.end method

.method public sendSip(ILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSip: sipMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 905
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 906
    .local v1, "msgOffset":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 907
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 910
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->startRequestSendSip(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 911
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 912
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->addSipMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 914
    :cond_1
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 915
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->endRequestSendSip(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 918
    .local v2, "sendSipOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 919
    const/16 v3, 0x4b0

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 920
    const/16 v3, 0x66

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 921
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 922
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 924
    .local v3, "requestOffSet":I
    invoke-direct {p0, v0, v3, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 925
    return-void
.end method

.method public sendSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 16
    .param p1, "handle"    # I
    .param p2, "scaUri"    # Ljava/lang/String;
    .param p3, "localUri"    # Ljava/lang/String;
    .param p4, "hexStr"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "subContentType"    # Ljava/lang/String;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .line 2009
    move-object/from16 v0, p7

    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2010
    .local v1, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 2011
    .local v3, "smscOffset":I
    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 2012
    .local v5, "localUriOffeset":I
    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 2013
    .local v7, "bodyOffset":I
    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 2014
    .local v9, "typeOffset":I
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 2015
    .local v11, "subTypeOffset":I
    const/4 v12, -0x1

    .line 2016
    .local v12, "callIdOffset":I
    if-eqz v0, :cond_0

    .line 2017
    invoke-virtual {v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 2020
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->startRequestSendMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2021
    move/from16 v13, p1

    int-to-long v14, v13

    invoke-static {v1, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2022
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addSmsc(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2023
    invoke-static {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addLocalUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2024
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v1, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentLen(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2025
    invoke-static {v1, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2026
    invoke-static {v1, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2027
    invoke-static {v1, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentSubType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2028
    const/4 v14, -0x1

    if-eq v12, v14, :cond_1

    .line 2029
    invoke-static {v1, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addInReplyTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2031
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->endRequestSendMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v14

    .line 2033
    .local v14, "reqOffset":I
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2034
    const/16 v15, 0x191

    invoke-static {v1, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2035
    const/16 v15, 0x21

    invoke-static {v1, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2036
    invoke-static {v1, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2038
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v15

    .line 2040
    .local v15, "requestOffSet":I
    move-object/from16 v0, p0

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v15, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 2041
    return-void
.end method

.method public sendSmsResponse(ILjava/lang/String;I)V
    .locals 5
    .param p1, "handle"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "status"    # I

    .line 2070
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2071
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 2072
    .local v1, "callIdOffset":I
    if-eqz p2, :cond_0

    .line 2073
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2076
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->startRequestReceiveSmsResp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2077
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2078
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2079
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->addCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2081
    :cond_1
    int-to-long v2, p3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2082
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->endRequestReceiveSmsResp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 2084
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2085
    const/16 v3, 0x193

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2086
    const/16 v3, 0x23

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2087
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2089
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 2091
    .local v3, "requestOffSet":I
    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 2092
    return-void
.end method

.method public sendSmsRpAckResponse(ILjava/lang/String;)V
    .locals 5
    .param p1, "handle"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 2045
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2046
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 2047
    .local v1, "callIdOffset":I
    if-eqz p2, :cond_0

    .line 2048
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2051
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->startRequestSendRpAckResp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2052
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2053
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2054
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->addCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2056
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->endRequestSendRpAckResp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 2058
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2059
    const/16 v3, 0x192

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2060
    const/16 v3, 0x22

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2061
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2063
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 2065
    .local v3, "requestOffSet":I
    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 2066
    return-void
.end method

.method public sendText(IILjava/lang/String;I)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "len"    # I

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendText: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,text "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendText(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1844
    return-void
.end method

.method public sendX509CertVerifyResponse(ZLjava/lang/String;)V
    .locals 5
    .param p1, "result"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 2113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendX509CertVerifyResponse(): result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2118
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 2119
    .local v1, "reasonOffset":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2120
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2123
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->startRequestX509CertVerifyResult(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2124
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2125
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->addReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2127
    :cond_1
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->addResult(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 2128
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->endRequestX509CertVerifyResult(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 2131
    .local v2, "sendX509CertVerifyResponseOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2132
    const/16 v3, 0x386

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2133
    const/16 v3, 0x6c

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2134
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2135
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 2137
    .local v3, "requestOffSet":I
    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 2138
    return-void
.end method

.method public setImsFramework(Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0
    .param p1, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 333
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 334
    return-void
.end method

.method public setPreferredImpu(ILjava/lang/String;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "impu"    # Ljava/lang/String;

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferredImpu: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " impu "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSetPreferredImpu(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 660
    return-void
.end method

.method public setSilentLogEnabled(Z)V
    .locals 4
    .param p1, "onoff"    # Z

    .line 3070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSilentLogEnabled: onoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 3074
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSilentLogEnabled;->startRequestSilentLogEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 3075
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSilentLogEnabled;->addOnoff(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 3076
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSilentLogEnabled;->endRequestSilentLogEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 3079
    .local v1, "setSilentLogEnabledOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 3080
    const/16 v2, 0x387

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 3081
    const/16 v2, 0x6d

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 3082
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 3083
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 3085
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 3086
    return-void
.end method

.method public setTextMode(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextMode(): mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2191
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSetTextMode(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 2192
    return-void
.end method

.method public startCamera(III)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "cameraId"    # I

    .line 1749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCamera: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartCamera(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1752
    return-void
.end method

.method public startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "audioSource"    # I
    .param p4, "outputFormat"    # I
    .param p5, "maxFileSize"    # J
    .param p7, "maxDuration"    # I
    .param p8, "outputPath"    # Ljava/lang/String;
    .param p9, "audioEncodingBR"    # I
    .param p10, "audioChannels"    # I
    .param p11, "audioSamplingR"    # I
    .param p12, "audioEncoder"    # I
    .param p13, "durationInterval"    # I
    .param p14, "fileSizeInterval"    # J
    .param p16, "author"    # Ljava/lang/String;

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCmcRecord: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StackIF"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    invoke-static/range {p1 .. p16}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, p0

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 2003
    return-void
.end method

.method public startLocalRingBackTone(IIIILandroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "streamType"    # I
    .param p3, "volume"    # I
    .param p4, "toneType"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startLocalRingBackTone: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartLocalRingBackTone(IIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1969
    return-void
.end method

.method public startRecord(IILjava/lang/String;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRecord: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartRecord(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1981
    return-void
.end method

.method public startVideoEarlyMedia(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I

    .line 1895
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartVideoEarlyMedia(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1896
    return-void
.end method

.method public stopCamera(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopCamera: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStopCamera(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1758
    return-void
.end method

.method public stopLocalRingBackTone(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopLocalRingBackTone: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStopLocalRingBackTone(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1975
    return-void
.end method

.method public stopRecord(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I

    .line 1984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopRecord: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStopRecord(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1987
    return-void
.end method

.method public transferCall(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "sessionId"    # I
    .param p3, "targetUri"    # Ljava/lang/String;
    .param p4, "replacingSessionId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 1813
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeTransferCall(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1814
    return-void
.end method

.method public unRegisterUaListener(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterUaListener Handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAudioInterface: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateAudioInterface(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1963
    return-void
.end method

.method public updateCall(IIIILjava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "action"    # I
    .param p3, "codecType"    # I
    .param p4, "cause"    # I
    .param p5, "reasonText"    # Ljava/lang/String;

    .line 1875
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1876
    return-void
.end method

.method public updateCmcExtCallCount(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callCnt"    # I

    .line 1891
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateCmcExtCallCount(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1892
    return-void
.end method

.method public updateConfCall(IIIILjava/lang/String;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "session"    # I
    .param p3, "cmd"    # I
    .param p4, "participantId"    # I
    .param p5, "participant"    # Ljava/lang/String;

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConfCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " confSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " updateCmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " participantID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateConfCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1810
    return-void
.end method

.method public updateGeolocation(ILcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .locals 22
    .param p1, "handle"    # I
    .param p2, "geolocation"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 720
    move/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StackIF"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 725
    .local v2, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v3, -0x1

    .line 726
    .local v3, "latitudeOffset":I
    iget-object v4, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 727
    iget-object v4, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 730
    :cond_0
    const/4 v4, -0x1

    .line 731
    .local v4, "longitudeOffset":I
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 732
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 735
    :cond_1
    const/4 v5, -0x1

    .line 736
    .local v5, "altitudeOffset":I
    iget-object v6, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAltitude:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 737
    iget-object v6, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAltitude:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 740
    :cond_2
    const/4 v6, -0x1

    .line 741
    .local v6, "accuracyOffset":I
    iget-object v7, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAccuracy:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 742
    iget-object v7, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAccuracy:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 745
    :cond_3
    const/4 v7, -0x1

    .line 746
    .local v7, "providertypeOffset":I
    iget-object v8, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mProviderType:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 747
    iget-object v8, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mProviderType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 750
    :cond_4
    const/4 v8, -0x1

    .line 751
    .local v8, "retentionexpiresOffset":I
    iget-object v9, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRetentionExpires:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 752
    iget-object v9, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRetentionExpires:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 755
    :cond_5
    const/4 v9, -0x1

    .line 756
    .local v9, "srsnameOffset":I
    iget-object v10, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mSRSName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 757
    iget-object v10, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mSRSName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 760
    :cond_6
    const/4 v10, -0x1

    .line 761
    .local v10, "radiusuomOffset":I
    iget-object v11, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRadiusUOM:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 762
    iget-object v11, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRadiusUOM:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 765
    :cond_7
    const/4 v11, -0x1

    .line 766
    .local v11, "osOffset":I
    iget-object v12, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOS:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 767
    iget-object v12, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOS:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 770
    :cond_8
    const/4 v12, -0x1

    .line 771
    .local v12, "deviceidOffset":I
    iget-object v13, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mDeviceId:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 772
    iget-object v13, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 775
    :cond_9
    const/4 v13, -0x1

    .line 776
    .local v13, "countryOffset":I
    iget-object v14, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 777
    iget-object v14, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 780
    :cond_a
    const/4 v14, -0x1

    .line 781
    .local v14, "a1Offset":I
    iget-object v15, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 782
    iget-object v15, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 785
    :cond_b
    const/4 v15, -0x1

    .line 786
    .local v15, "a3Offset":I
    move/from16 v16, v15

    .end local v15    # "a3Offset":I
    .local v16, "a3Offset":I
    iget-object v15, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA3:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 787
    iget-object v15, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA3:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .end local v16    # "a3Offset":I
    .restart local v15    # "a3Offset":I
    goto :goto_0

    .line 786
    .end local v15    # "a3Offset":I
    .restart local v16    # "a3Offset":I
    :cond_c
    move/from16 v15, v16

    .line 790
    .end local v16    # "a3Offset":I
    .restart local v15    # "a3Offset":I
    :goto_0
    const/16 v16, -0x1

    .line 791
    .local v16, "a6Offset":I
    iget-object v0, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA6:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 792
    iget-object v0, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA6:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v0, v16

    goto :goto_1

    .line 791
    :cond_d
    move/from16 v0, v16

    .line 795
    .end local v16    # "a6Offset":I
    .local v0, "a6Offset":I
    :goto_1
    const/16 v16, -0x1

    .line 796
    .local v16, "hnoOffset":I
    move/from16 v17, v3

    .end local v3    # "latitudeOffset":I
    .local v17, "latitudeOffset":I
    iget-object v3, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mHNO:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 797
    iget-object v3, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mHNO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v3, v16

    goto :goto_2

    .line 796
    :cond_e
    move/from16 v3, v16

    .line 800
    .end local v16    # "hnoOffset":I
    .local v3, "hnoOffset":I
    :goto_2
    const/16 v16, -0x1

    .line 801
    .local v16, "pcOffset":I
    move/from16 v18, v4

    .end local v4    # "longitudeOffset":I
    .local v18, "longitudeOffset":I
    iget-object v4, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mPC:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 802
    iget-object v4, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mPC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v4, v16

    goto :goto_3

    .line 801
    :cond_f
    move/from16 v4, v16

    .line 805
    .end local v16    # "pcOffset":I
    .local v4, "pcOffset":I
    :goto_3
    const/16 v16, -0x1

    .line 806
    .local v16, "locationtimeOffset":I
    move/from16 v19, v5

    .end local v5    # "altitudeOffset":I
    .local v19, "altitudeOffset":I
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 807
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v5, v16

    goto :goto_4

    .line 806
    :cond_10
    move/from16 v5, v16

    .line 810
    .end local v16    # "locationtimeOffset":I
    .local v5, "locationtimeOffset":I
    :goto_4
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->startRequestUpdateGeolocation(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 812
    const/4 v1, -0x1

    if-eq v5, v1, :cond_11

    .line 813
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addLocationtime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 816
    :cond_11
    if-eq v4, v1, :cond_12

    .line 817
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addPc(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 820
    :cond_12
    if-eq v3, v1, :cond_13

    .line 821
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addHno(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 824
    :cond_13
    if-eq v0, v1, :cond_14

    .line 825
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addA6(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 828
    :cond_14
    if-eq v15, v1, :cond_15

    .line 829
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addA3(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 832
    :cond_15
    if-eq v14, v1, :cond_16

    .line 833
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addA1(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 836
    :cond_16
    if-eq v13, v1, :cond_17

    .line 837
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addCountry(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 840
    :cond_17
    if-eq v12, v1, :cond_18

    .line 841
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addDeviceid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 844
    :cond_18
    if-eq v11, v1, :cond_19

    .line 845
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addOs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 848
    :cond_19
    if-eq v10, v1, :cond_1a

    .line 849
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addRadiusuom(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 852
    :cond_1a
    if-eq v9, v1, :cond_1b

    .line 853
    invoke-static {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addSrsname(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 856
    :cond_1b
    if-eq v8, v1, :cond_1c

    .line 857
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addRetentionexpires(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 860
    :cond_1c
    if-eq v7, v1, :cond_1d

    .line 861
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addProvidertype(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 864
    :cond_1d
    if-eq v6, v1, :cond_1e

    .line 865
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addAccuracy(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 868
    :cond_1e
    move/from16 v16, v0

    move/from16 v0, v19

    .end local v19    # "altitudeOffset":I
    .local v0, "altitudeOffset":I
    .local v16, "a6Offset":I
    if-eq v0, v1, :cond_1f

    .line 869
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addAltitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 872
    :cond_1f
    move/from16 v19, v0

    move/from16 v0, v18

    .end local v18    # "longitudeOffset":I
    .local v0, "longitudeOffset":I
    .restart local v19    # "altitudeOffset":I
    if-eq v0, v1, :cond_20

    .line 873
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addLongitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 876
    :cond_20
    move/from16 v18, v0

    move/from16 v0, v17

    .end local v17    # "latitudeOffset":I
    .local v0, "latitudeOffset":I
    .restart local v18    # "longitudeOffset":I
    if-eq v0, v1, :cond_21

    .line 877
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addLatitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 880
    :cond_21
    move/from16 v1, p1

    move/from16 v17, v3

    move/from16 v20, v4

    .end local v3    # "hnoOffset":I
    .end local v4    # "pcOffset":I
    .local v17, "hnoOffset":I
    .local v20, "pcOffset":I
    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 881
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->endRequestUpdateGeolocation(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 884
    .local v3, "updateGeoLocationOffset":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 885
    const/16 v4, 0x259

    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 886
    const/16 v4, 0x58

    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 887
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 888
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 890
    .local v4, "requestOffSet":I
    move/from16 v21, v0

    .end local v0    # "latitudeOffset":I
    .local v21, "latitudeOffset":I
    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-direct {v1, v2, v4, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 891
    return-void
.end method

.method public updateNtpTimeOffset(J)V
    .locals 4
    .param p1, "ntpTimeOffset"    # J

    .line 3089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNtpTimeOffset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 3092
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNtpTimeOffset;->startRequestNtpTimeOffset(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 3093
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNtpTimeOffset;->addOffset(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 3094
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNtpTimeOffset;->endRequestNtpTimeOffset(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 3096
    .local v1, "sendNtpTimeOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 3097
    const/16 v2, 0x389

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 3098
    const/16 v2, 0x6e

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 3099
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 3100
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 3102
    .local v2, "requestOffset":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 3103
    return-void
.end method

.method public updatePani(ILjava/util/List;)V
    .locals 4
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 663
    .local p2, "panis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 668
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updatePaniReq(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/util/List;)I

    move-result v1

    .line 670
    .local v1, "paniOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 671
    const/16 v2, 0x258

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 673
    const/16 v2, 0x44

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 674
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 676
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 678
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 679
    return-void
.end method

.method public updateRat(II)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "network"    # I

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 706
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    int-to-long v4, p1

    int-to-long v6, p2

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->ratReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I

    move-result v1

    .line 708
    .local v1, "ratOffSet":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 709
    const/16 v2, 0x25a

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 711
    const/16 v2, 0x4f

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 712
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 714
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 716
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 717
    return-void
.end method

.method public updateScreenOnOff(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "on"    # I

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScreenOnOff: on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1937
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateScreenOnOff(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1938
    return-void
.end method

.method public updateServiceVersion(ILjava/util/HashMap;)V
    .locals 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1941
    .local p2, "svMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateServiceVersion:phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1944
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1947
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateServiceVersion(ILjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1948
    return-void
.end method

.method public updateTimeInPlani(IJ)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "time"    # J

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTimeInPlani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 687
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    int-to-long v4, p1

    move-object v2, p0

    move-object v3, v0

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->planiTimeReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I

    move-result v1

    .line 689
    .local v1, "planiTimeOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 690
    const/16 v2, 0x25b

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 692
    const/16 v2, 0x50

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 693
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 695
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 697
    .local v2, "requestOffSet":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 698
    return-void
.end method

.method public updateVceConfig(IZ)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "config"    # Z

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVceConfig: handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateVceConfig(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 897
    return-void
.end method

.method public updateXqEnable(IZ)V
    .locals 3
    .param p1, "phone_id"    # I
    .param p2, "enable"    # Z

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateXqEnable():  enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateXqEnable(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    .line 1918
    return-void
.end method
