.class public Lcom/sec/internal/ims/servicemodules/ss/RequestState;
.super Lcom/sec/internal/helper/State;
.source "RequestState.java"


# instance fields
.field private mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0
    .param p1, "utStateMachine"    # Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 19
    return-void
.end method

.method private handleNeedFirstGet()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v1, 0x1

    const-string v2, "Send GET before PUT due to no cache."

    const/16 v3, 0x65

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-nez v0, :cond_0

    .line 221
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0, v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v1, 0x64

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x67

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-nez v0, :cond_1

    .line 225
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0, v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v1, 0x66

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x69

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-nez v0, :cond_2

    .line 229
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0, v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v1, 0x68

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 233
    :cond_2
    :goto_0
    return-void
.end method

.method private initPdnInfo()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConnection()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 96
    return-void
.end method

.method private processGetRequest()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeHttpParams()Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 54
    .local v0, "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 55
    return-void
.end method

.method private processPdnConnected()V
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasProfile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v0

    const-wide/16 v1, 0x64

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IJ)V

    .line 176
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedFirstGet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 180
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->handleNeedFirstGet()V

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetAfter412:Z

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x73

    if-ne v0, v3, :cond_3

    .line 185
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "Send GET after PUT error 412"

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v3, 0x72

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequest()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 193
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    const/16 v4, 0xc

    if-ne v0, v3, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isServiceActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v6, "Service is disabled on network side"

    invoke-static {v3, v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v5, 0x3f3

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IIJ)V

    .line 196
    return-void

    .line 199
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequestBlocked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 200
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v5, 0x3f4

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IIJ)V

    .line 201
    return-void

    .line 204
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPutRequest()V

    .line 205
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    goto :goto_0

    .line 206
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    if-nez v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    if-eqz v0, :cond_a

    .line 209
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 211
    return-void

    .line 213
    :cond_a
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processGetRequest()V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 217
    return-void
.end method

.method private processPutRequest()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_6

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->setAllMediaCF:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 62
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v0, v2, :cond_0

    .line 63
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Separated requests for media, send requests for audio and video conditions"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNRY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v0, v2, :cond_2

    .line 71
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "SeparatedRequest CFNRY"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    goto/16 :goto_1

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFNL:Z

    if-eqz v0, :cond_3

    .line 74
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "SeparatedRequest CFNL"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    goto :goto_1

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedSeparateCFA:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v3, v2, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    .line 80
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeparatedRequest CF ALL - start from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeHttpParams()Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 86
    .local v0, "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 87
    return-void
.end method

.method private requestPdn()V
    .locals 7

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    .line 27
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v2, "ss_domain_setting"

    const-string v3, "PS"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "ssRouting":Ljava/lang/String;
    const-string v1, "PSCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xc

    if-nez v1, :cond_0

    const-string v1, "PS_ONLY_VOLTEREGIED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isVolteServiceRegistered(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "IMS is not registered, UT request must fail "

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v3, 0x3f5

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(II)V

    .line 36
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConnection()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 40
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-interface {v1, v4, v5, v6}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I

    move-result v1

    .line 42
    .local v1, "result":I
    if-eq v1, v3, :cond_2

    .line 43
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPDN fails "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v4, 0x3f6

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(II)V

    .line 46
    .end local v1    # "result":I
    :cond_2
    goto :goto_0

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 49
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .line 23
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 100
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestState::ProcessMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf

    if-eq v0, v1, :cond_5

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v3, 0x10

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPutRequest()V

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 135
    goto/16 :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPutRequest()V

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 125
    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v1, 0x7

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 110
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPutRequest()V

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 112
    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 115
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPutRequest()V

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 117
    goto :goto_0

    .line 150
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    .line 153
    goto :goto_0

    .line 141
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processTerminalRequest()V

    .line 142
    goto :goto_0

    .line 147
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->initPdnInfo()V

    .line 148
    goto :goto_0

    .line 144
    :pswitch_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->disconnectPdn()V

    .line 145
    goto :goto_0

    .line 106
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processPdnConnected()V

    .line 107
    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->processGetRequest()V

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 139
    goto :goto_0

    .line 103
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->requestPdn()V

    .line 104
    goto :goto_0

    .line 161
    :cond_4
    return v3

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasProfile()Z

    move-result v0

    if-nez v0, :cond_6

    .line 157
    nop

    .line 163
    :goto_0
    return v2

    .line 159
    :cond_6
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
