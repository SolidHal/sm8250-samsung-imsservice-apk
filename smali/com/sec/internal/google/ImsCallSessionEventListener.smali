.class public Lcom/sec/internal/google/ImsCallSessionEventListener;
.super Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;
.source "ImsCallSessionEventListener.java"


# static fields
.field private static final EVENT_CALL_RETRY:I = 0x64

.field private static final EVENT_RETRY_AFTER_TIMEOUT:I = 0x65

.field private static USSD_MODE_NW_ERROR:I

.field private static mEventCallRetryCounter:I

.field private static mEventCallRetryTotalTimer:I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    sput v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 38
    const/4 v0, -0x1

    sput v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->USSD_MODE_NW_ERROR:I

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/google/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "icsi"    # Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 40
    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;-><init>()V

    .line 30
    const-string v0, "ImsCallSessionEventListener"

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->LOG_TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 42
    return-void
.end method

.method private onErrorBeforeNego(ILjava/lang/String;I)Z
    .locals 10
    .param p1, "error"    # I
    .param p2, "errorString"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 396
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 397
    .local v1, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 400
    .local v3, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 401
    .end local v3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_1

    .line 402
    :cond_0
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v4, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v4

    invoke-direct {v3, v4, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 403
    .restart local v3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 404
    .end local v3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_1

    .line 405
    :cond_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 406
    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    new-instance v6, Lcom/sec/ims/util/SipError;

    invoke-direct {v6, p1, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v5, v6, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 407
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x93

    invoke-direct {v3, v4, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 409
    .restart local v3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_5

    .line 410
    sget v4, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    add-int/2addr v4, p3

    sput v4, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 411
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "ImsCallSessionImpl"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 412
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 413
    new-instance v4, Lcom/sec/internal/google/ImsCallSessionEventListener$1;

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/sec/internal/google/ImsCallSessionEventListener$1;-><init>(Lcom/sec/internal/google/ImsCallSessionEventListener;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    .line 428
    const-wide/16 v5, 0x3e8

    if-lez p3, :cond_2

    .line 429
    const/16 v7, 0x65

    invoke-virtual {v4, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 430
    .local v4, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    int-to-long v8, p3

    mul-long/2addr v8, v5

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 432
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    sget v4, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    const/4 v7, 0x1

    add-int/2addr v4, v7

    sput v4, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    .line 434
    if-lez p3, :cond_4

    const/4 v8, 0x5

    if-ge v4, v8, :cond_4

    sget v4, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    const/16 v8, 0x41

    if-ge v4, v8, :cond_4

    .line 435
    const/16 v8, 0x1f7

    const-string v9, "ImsCallSessionEventListener"

    if-ne p1, v8, :cond_3

    const/16 v8, 0x2d

    if-lt v4, v8, :cond_3

    .line 436
    const-string v4, "onError: Not Going to call Retry for SIP Error"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_3
    const-string v2, "onError: Going to call Retry for SIP Error"

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 441
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandler:Landroid/os/Handler;

    int-to-long v8, p3

    mul-long/2addr v8, v5

    invoke-virtual {v4, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 442
    return v7

    .line 445
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    sput v2, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryCounter:I

    .line 446
    sput v2, Lcom/sec/internal/google/ImsCallSessionEventListener;->mEventCallRetryTotalTimer:I

    .line 447
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->quit()Z

    .line 448
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v5, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v5

    invoke-direct {v4, v5, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v3, v4

    .line 450
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 451
    .end local v3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 452
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 453
    .restart local v3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 454
    .end local v3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_1

    :cond_7
    const/16 v3, 0x17e

    const/16 v4, 0x17d

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_8

    .line 456
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x92

    invoke-direct {v3, v4, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 458
    .restart local v3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 459
    .end local v3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_1

    .line 460
    :cond_8
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 461
    invoke-virtual {v6, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v6

    invoke-direct {v5, v6, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 462
    .local v5, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    if-eq p1, v4, :cond_9

    if-ne p1, v3, :cond_a

    .line 464
    :cond_9
    iput p1, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 465
    invoke-static {p2}, Lcom/sec/internal/google/DataTypeConvertor;->convertUrnToEccCat(Ljava/lang/String;)I

    move-result v3

    .line 466
    .local v3, "eccCat":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 467
    const/16 v4, 0xfe

    if-ne v3, v4, :cond_a

    .line 468
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v4, p2}, Lcom/sec/internal/google/GoogleImsService;->setServiceUrn(Ljava/lang/String;)V

    .line 471
    .end local v3    # "eccCat":I
    :cond_a
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v3, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 473
    .end local v5    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/16 v4, 0x8

    iput v4, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 474
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v3, :cond_b

    .line 475
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 476
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 478
    :cond_b
    return v2
.end method

.method private onErrorWhileNegoOrLater(ILjava/lang/String;)Z
    .locals 6
    .param p1, "error"    # I
    .param p2, "errorString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 494
    .local v0, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v2, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 495
    .local v1, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/16 v2, 0x451

    const/4 v3, 0x1

    if-eq p1, v2, :cond_a

    const/16 v2, 0x452

    if-eq p1, v2, :cond_9

    const/16 v2, 0x457

    const/4 v3, 0x0

    if-eq p1, v2, :cond_7

    const/16 v2, 0x458

    if-eq p1, v2, :cond_6

    packed-switch p1, :pswitch_data_0

    .line 521
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcPrimaryType(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 522
    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 525
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .line 527
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcPrimaryType(I)Z

    move-result v2

    const/16 v4, 0x25b

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_3

    const/16 v2, 0xd2

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_3

    .line 529
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 530
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 531
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v2

    if-eqz v2, :cond_4

    if-ne p1, v4, :cond_4

    .line 532
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 534
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 536
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/16 v4, 0x8

    iput v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 537
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-boolean v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz v2, :cond_5

    .line 538
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/google/GoogleImsService;->enterEmergencyCallbackMode(I)V

    .line 539
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iput-boolean v3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 541
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v2, :cond_8

    .line 542
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    invoke-interface {v2, v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 543
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    goto :goto_1

    .line 509
    :pswitch_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionCancelTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 510
    goto :goto_1

    .line 512
    :pswitch_1
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionCancelTransferred()V

    .line 513
    goto :goto_1

    .line 503
    :pswitch_2
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 504
    goto :goto_1

    .line 506
    :pswitch_3
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferred()V

    .line 507
    goto :goto_1

    .line 500
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 501
    goto :goto_1

    .line 497
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 498
    nop

    .line 547
    :cond_8
    :goto_1
    return v3

    .line 519
    :cond_9
    return v3

    .line 515
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 516
    return v3

    :pswitch_data_0
    .packed-switch 0x45e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCalling()V
    .locals 7

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 48
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 50
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 51
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v4

    const/4 v5, -0x1

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 52
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIIII)V

    .line 53
    .local v0, "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 54
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_0
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    :goto_0
    return-void
.end method

.method public onConfParticipantHeld(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const-string v1, "on-hold"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    .line 655
    return-void
.end method

.method public onConfParticipantResumed(IZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const-string v1, "connected"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    .line 664
    return-void
.end method

.method public onConferenceEstablished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 562
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 563
    return-void
.end method

.method public onEPdgUnavailable(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 697
    return-void
.end method

.method public onEarlyMediaStarted(I)V
    .locals 6
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 113
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iput v2, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 118
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 120
    .local v1, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<urn:alert:service:call-waiting>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-boolean v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsCWNotified:Z

    if-nez v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsCWNotified:Z

    .line 122
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 125
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    if-ne v3, v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 129
    .end local v1    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_3
    return-void
.end method

.method public onEnded(I)V
    .locals 7
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 235
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getVideoCrbtSupportType()I

    move-result v1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 236
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 237
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 241
    .local v1, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEnded(), cmcType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sessionState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsCallSessionEventListener"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v3, :cond_a

    .line 243
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    .line 245
    .local v3, "prevInternalState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v3, v4, :cond_2

    const/16 v4, 0xd2

    if-ne p1, v4, :cond_2

    .line 246
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v5, 0x5

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_8

    .line 250
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v4, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v4

    invoke-direct {v2, v4, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 252
    .local v2, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 253
    .end local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_1

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 254
    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    new-instance v6, Lcom/sec/ims/util/SipError;

    invoke-direct {v6, p1}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v2, v4, v5, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteRetryRequired(IILcom/sec/ims/util/SipError;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 255
    const/4 v2, 0x0

    .line 256
    .restart local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_4

    const/16 v4, 0x96e

    if-ne p1, v4, :cond_4

    .line 257
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v5, 0xbb9

    invoke-direct {v4, v5, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v2, v4

    goto :goto_0

    .line 260
    :cond_4
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v5, 0x93

    invoke-direct {v4, v5, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v2, v4

    .line 263
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 264
    .end local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 265
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x92

    invoke-direct {v2, v4, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 267
    .restart local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 268
    .end local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_1

    .line 270
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    if-lez v2, :cond_7

    const/16 v2, 0x25b

    if-ne p1, v2, :cond_7

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 272
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 273
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->isReplacedSession()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 274
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v4, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v4

    invoke-direct {v2, v4, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 275
    .restart local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 276
    .end local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_1

    .line 277
    :cond_7
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 278
    invoke-virtual {v4, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v4

    invoke-direct {v2, v4, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 279
    .restart local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 280
    .end local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_1

    .line 283
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_9

    .line 285
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 286
    .restart local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 287
    .end local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_1

    .line 288
    :cond_9
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v4, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v4

    invoke-direct {v2, v4, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 289
    .restart local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 292
    .end local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "prevInternalState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v2}, Lcom/sec/internal/google/GoogleImsService;->hasConferenceHost()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 293
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v2}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v2

    .line 294
    .local v2, "host":Lcom/sec/internal/google/ImsCallSessionImpl;
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v4, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v4

    const-string v5, ""

    invoke-direct {v3, v4, p1, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 296
    .local v3, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 292
    .end local v2    # "host":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local v3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_b
    :goto_1
    nop

    .line 299
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->isMultiparty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 300
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v2, v3}, Lcom/sec/internal/google/GoogleImsService;->setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 303
    :cond_c
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-boolean v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz v2, :cond_d

    .line 304
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/google/GoogleImsService;->enterEmergencyCallbackMode(I)V

    .line 307
    :cond_d
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/16 v4, 0x8

    iput v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 308
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 309
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v2, :cond_e

    .line 310
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    invoke-interface {v2, v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 311
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iput-object v3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 314
    :cond_e
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    if-eqz v2, :cond_f

    .line 315
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-virtual {v2, v3}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 317
    :cond_f
    return-void
.end method

.method public onEpdgStateChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 702
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 705
    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "errorString"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 333
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 336
    .local v0, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v1

    const/4 v2, 0x2

    if-lez v1, :cond_2

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError(), cmcType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sessionState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ImsCallSessionEventListener"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 340
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 341
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v1

    if-lez v1, :cond_1

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError(), ignore error of cmcCall. just return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 351
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_5

    .line 356
    if-eqz v0, :cond_3

    const/16 v1, 0x25b

    if-ne p1, v1, :cond_3

    .line 357
    const-string v1, "Outgoing Call Barred"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    if-ge v1, v2, :cond_4

    .line 361
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/ImsCallSessionEventListener;->onErrorBeforeNego(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 362
    return-void

    .line 364
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionEventListener;->onErrorWhileNegoOrLater(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 365
    return-void

    .line 367
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1}, Lcom/sec/internal/google/GoogleImsService;->hasConferenceHost()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 368
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v1

    .line 369
    .local v1, "host":Lcom/sec/internal/google/ImsCallSessionImpl;
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 370
    invoke-virtual {v3, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v3

    invoke-direct {v2, v3, p1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 371
    .local v2, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 372
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3}, Lcom/sec/internal/google/GoogleImsService;->isInitialMerge()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x451

    if-ne p1, v3, :cond_6

    .line 373
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 376
    .end local v1    # "host":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 377
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/GoogleImsService;->setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 379
    :cond_7
    return-void
.end method

.method public onEstablished(I)V
    .locals 5
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 134
    .local v0, "prevState":I
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v2, 0x4

    iput v2, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 135
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 136
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->isWifiCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 141
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v3, :cond_3

    .line 142
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    .line 143
    .local v3, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v0, v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getTtyModeFromCallType(II)I

    move-result v2

    .line 150
    .local v2, "ttyModeFromCallType":I
    if-eqz v2, :cond_3

    .line 151
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v4, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V

    .line 154
    .end local v2    # "ttyModeFromCallType":I
    .end local v3    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_3
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 159
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 164
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 165
    .local v0, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 166
    .end local v0    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 168
    .restart local v0    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 170
    .end local v0    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 171
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 173
    :cond_2
    return-void
.end method

.method public onForwarded()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 219
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 221
    .local v0, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v1

    .line 222
    .local v1, "callDirection":I
    if-nez v1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 227
    .end local v0    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v1    # "callDirection":I
    :cond_1
    return-void
.end method

.method public onHeld(ZZ)V
    .locals 2
    .param p1, "initiator"    # Z
    .param p2, "localHoldTone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 192
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateHoldToneType(Z)V

    .line 193
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 201
    :cond_1
    :goto_0
    return-void
.end method

.method public onParticipantAdded(I)V
    .locals 11
    .param p1, "addedSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/GoogleImsService;->getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v0

    .line 595
    .local v0, "participant":Lcom/sec/internal/google/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1}, Lcom/sec/internal/google/GoogleImsService;->hasConferenceHost()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 596
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v1

    .line 598
    .local v1, "host":Lcom/sec/internal/google/ImsCallSessionImpl;
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    .line 599
    .local v2, "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    if-eqz v2, :cond_2

    .line 600
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    .line 602
    .local v3, "secCallProfile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v10

    .line 604
    .local v10, "user":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 605
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 606
    invoke-virtual {v5}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    .line 605
    const-string v8, "connected"

    move v5, p1

    move-object v6, v10

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/google/GoogleImsService;->putConferenceState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 609
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v4, :cond_1

    .line 610
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v4, v5}, Lcom/sec/internal/google/GoogleImsService;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 611
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 612
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v5}, Lcom/sec/internal/google/GoogleImsService;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    goto :goto_0

    .line 614
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v4, v5}, Lcom/sec/internal/google/GoogleImsService;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 615
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 616
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v5}, Lcom/sec/internal/google/GoogleImsService;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 619
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceParticipant:Z

    .line 622
    .end local v3    # "secCallProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v10    # "user":Ljava/lang/String;
    :cond_2
    iget-boolean v3, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceHost:Z

    if-eqz v3, :cond_4

    .line 623
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 624
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    check-cast v4, Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3, v4}, Lcom/sec/internal/google/GoogleImsService;->setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 625
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v3, :cond_3

    .line 626
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_1

    .line 628
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 632
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3}, Lcom/sec/internal/google/GoogleImsService;->isInitialMerge()Z

    move-result v3

    if-nez v3, :cond_5

    .line 633
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 635
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v3, v5, :cond_5

    .line 636
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 640
    .end local v1    # "host":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local v2    # "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    :cond_5
    return-void
.end method

.method public onParticipantRemoved(I)V
    .locals 2
    .param p1, "removeSessionId"    # I

    .line 644
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const-string v1, "disconnected"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateConferenceStatus(ILjava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/GoogleImsService;->removeConferenceState(I)V

    .line 646
    return-void
.end method

.method public onParticipantUpdated(I[Ljava/lang/String;[I[I)V
    .locals 14
    .param p1, "sessId"    # I
    .param p2, "participant"    # [Ljava/lang/String;
    .param p3, "status"    # [I
    .param p4, "sipError"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    move-object v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 569
    .local v2, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 570
    aget-object v4, p2, v3

    .line 571
    .local v4, "userId":Ljava/lang/String;
    const-string v5, "*23#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 572
    const/4 v5, 0x4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 574
    :cond_0
    const-string v5, "[^0-9]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 575
    const-string v5, "010"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 576
    const/4 v5, 0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 578
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_2

    .line 579
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 582
    :cond_2
    iget-object v5, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v6, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v5, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v8

    aget-object v9, p2, v3

    iget-object v5, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v5, v5, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 583
    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v5, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    aget v11, v1, v3

    invoke-virtual {v5, v11}, Lcom/sec/internal/google/ImsCallSessionImpl;->participantStatus(I)Ljava/lang/String;

    move-result-object v11

    aget v12, p4, v3

    iget-object v5, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 584
    invoke-virtual {v5}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v13

    .line 582
    invoke-virtual/range {v6 .. v13}, Lcom/sec/internal/google/GoogleImsService;->putConferenceStateList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V

    .line 569
    .end local v4    # "userId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    .end local v3    # "i":I
    :cond_3
    iget-object v3, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/sec/internal/google/GoogleImsService;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 587
    iget-object v3, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v4, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 588
    iget-object v3, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v3, v3, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v4, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v4, v4, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v4}, Lcom/sec/internal/google/GoogleImsService;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 589
    return-void
.end method

.method public onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    .locals 2
    .param p1, "src"    # Lcom/sec/ims/volte2/data/MediaProfile;
    .param p2, "dst"    # Lcom/sec/ims/volte2/data/MediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 554
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 557
    :cond_0
    return-void
.end method

.method public onResumed(Z)V
    .locals 2
    .param p1, "initiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 206
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 208
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 214
    :cond_1
    :goto_0
    return-void
.end method

.method public onRingingBack()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 76
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 77
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 79
    .local v0, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<urn:alert:service:call-waiting>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-boolean v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsCWNotified:Z

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsCWNotified:Z

    .line 81
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->onSuppServiceReceived(II)V

    .line 84
    :cond_0
    new-instance v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 85
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v5

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 86
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v7

    const/4 v8, -0x1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 87
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v9

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIIII)V

    .line 89
    .local v1, "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 90
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v2, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 92
    .end local v0    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v1    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_1
    return-void
.end method

.method public onSessionChanged(I)V
    .locals 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    .line 710
    .local v0, "session":Lcom/sec/ims/volte2/IImsCallSession;
    if-eqz v0, :cond_0

    .line 711
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iput-object v0, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 713
    :cond_0
    return-void
.end method

.method public onSessionProgress(I)V
    .locals 7
    .param p1, "audioEarlyMediaDir"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 97
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 98
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 101
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v2

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 102
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v4

    const/4 v5, -0x1

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 103
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v6

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIIII)V

    .line 105
    .local v0, "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 106
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 108
    .end local v0    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_0
    return-void
.end method

.method public onSessionUpdateRequested(I[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .line 322
    return-void
.end method

.method public onStopAlertTone()V
    .locals 0

    .line 327
    return-void
.end method

.method public onSwitched(I)V
    .locals 2
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 178
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 181
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getTtyModeFromCallType(II)I

    move-result v0

    .line 182
    .local v0, "ttyModeFromCallType":I
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V

    .line 186
    .end local v0    # "ttyModeFromCallType":I
    :cond_0
    return-void
.end method

.method public onTrying()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 67
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onTtyTextRequest(I[B)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "data"    # [B

    .line 669
    return-void
.end method

.method public onUssdReceived(II[B)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "dcs"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    const/4 v0, 0x0

    .line 680
    .local v0, "ussdMessage":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 682
    goto :goto_0

    .line 681
    :catch_0
    move-exception v1

    .line 683
    :goto_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    goto :goto_1

    .line 686
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "error-code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    sget v2, Lcom/sec/internal/google/ImsCallSessionEventListener;->USSD_MODE_NW_ERROR:I

    invoke-interface {v1, v2, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    goto :goto_1

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 692
    :goto_1
    return-void
.end method

.method public onUssdResponse(I)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    return-void
.end method
