.class public Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;
.super Lcom/sec/internal/google/ImsCallSessionImpl;
.source "CmcImsCallSessionImpl.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/google/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "manager"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "googleImsService"    # Lcom/sec/internal/google/GoogleImsService;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/sec/internal/google/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    .line 39
    const-string v1, "CmcImsCallSessionImpl"

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->LOG_TAG:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    .line 48
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    .line 49
    invoke-virtual {p2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    if-nez v2, :cond_0

    .line 50
    const-string v2, "mainSession is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    .line 52
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallId:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallIdInt:I

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->initP2pImpl()V

    .line 57
    :goto_0
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 190
    invoke-super {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 191
    return-void
.end method

.method public cancelTransferCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 344
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->cancelTransferCall()V

    .line 345
    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .param p1, "mImsCallSession"    # Lcom/android/ims/internal/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 338
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V

    .line 339
    return-void
.end method

.method public getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    return-object v0
.end method

.method public getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 90
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    return-object v0
.end method

.method public getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 95
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 85
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 220
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 221
    return-void
.end method

.method public initP2pImpl()V
    .locals 3

    .line 61
    :try_start_0
    const-string v0, "CmcImsCallSessionImpl"

    const-string v1, "initP2pImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 65
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 66
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 67
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getCallId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallIdInt:I

    .line 69
    iget v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallIdInt:I

    if-lez v0, :cond_0

    .line 70
    iget v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallIdInt:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;-><init>(Lcom/sec/ims/volte2/IImsCallSession;)V

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    .line 76
    return-void
.end method

.method public isInCall()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 101
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->isInCall()Z

    move-result v0

    return v0
.end method

.method public isMultiparty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 256
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->isMultiparty()Z

    move-result v0

    return v0
.end method

.method public reject(I)V
    .locals 1
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 196
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->reject(I)V

    .line 197
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 226
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 227
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 232
    invoke-super {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendDtmf(CLandroid/os/Message;)V

    .line 233
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 314
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendRttMessage(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "to"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 320
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 321
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 1
    .param p1, "response"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 326
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendRttModifyResponse(Z)V

    .line 327
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 250
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendUssd(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 13
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 110
    :cond_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mState:I

    .line 114
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 115
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->setCallProfile(I)V

    .line 117
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 118
    .local v2, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getPhoneId()I

    move-result v3

    .line 119
    .local v3, "phoneId":I
    invoke-virtual {v2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->isEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v5, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v5}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CallRadioTech"

    invoke-virtual {v4, v6, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v5, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v5, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    .line 126
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v5, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 128
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v5, "CallPull"

    invoke-virtual {v4, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 129
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v5, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 130
    .local v4, "oemExtras":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v6, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object v5

    .line 131
    .local v5, "de":Lcom/sec/ims/DialogEvent;
    const/16 v6, 0x65

    .line 133
    .local v6, "pullFailReason":I
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 134
    const-string v7, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 136
    .local v7, "dialogId":I
    invoke-virtual {v5}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/Dialog;

    .line 137
    .local v9, "pullTarget":Lcom/sec/ims/Dialog;
    if-nez v9, :cond_3

    .line 138
    goto :goto_0

    .line 141
    :cond_3
    const/4 v10, -0x1

    .line 142
    .local v10, "targetDialogId":I
    iget-object v11, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v11}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v11

    invoke-static {v11}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 143
    .local v11, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v12, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v11, v12, :cond_4

    .line 144
    invoke-virtual {v9}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/helper/ImsCallUtil;->getIdForString(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    .line 147
    :cond_4
    :try_start_0
    invoke-virtual {v9}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move v10, v12

    .line 150
    nop

    .line 153
    :goto_1
    if-ne v7, v10, :cond_5

    .line 154
    invoke-virtual {v9}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 155
    invoke-virtual {v9}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 156
    invoke-virtual {v9}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 157
    iget-object v8, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v9}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v12

    invoke-static {v12}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v12

    iput v12, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 158
    invoke-virtual {v9}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 159
    invoke-virtual {v2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setPullCall(Z)V

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v5}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v9}, Lcom/sec/ims/volte2/IImsCallSession;->pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v6, 0x3f7

    .line 165
    goto :goto_2

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "pullTarget":Lcom/sec/ims/Dialog;
    .end local v10    # "targetDialogId":I
    .end local v11    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_5
    goto :goto_0

    .line 148
    .restart local v9    # "pullTarget":Lcom/sec/ims/Dialog;
    .restart local v10    # "targetDialogId":I
    .restart local v11    # "mno":Lcom/sec/internal/constants/Mno;
    :catch_1
    move-exception v12

    .line 149
    .local v12, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 171
    .end local v7    # "dialogId":I
    .end local v9    # "pullTarget":Lcom/sec/ims/Dialog;
    .end local v10    # "targetDialogId":I
    .end local v11    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_7

    .line 172
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v7, v6, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v7}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 174
    .end local v4    # "oemExtras":Landroid/os/Bundle;
    .end local v5    # "de":Lcom/sec/ims/DialogEvent;
    .end local v6    # "pullFailReason":I
    :cond_7
    goto :goto_3

    .line 176
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result v0

    if-ltz v0, :cond_9

    .line 183
    goto :goto_3

    .line 177
    :cond_9
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v4, "start return -1"

    invoke-direct {v0, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v2    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v3    # "phoneId":I
    .end local p0    # "this":Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;
    .end local p1    # "callee":Ljava/lang/String;
    .end local p2    # "profile":Landroid/telephony/ims/ImsCallProfile;
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    .restart local v2    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    .restart local v3    # "phoneId":I
    .restart local p0    # "this":Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;
    .restart local p1    # "callee":Ljava/lang/String;
    .restart local p2    # "profile":Landroid/telephony/ims/ImsCallProfile;
    :catch_2
    move-exception v0

    .line 180
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v4, :cond_a

    .line 181
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x67

    invoke-direct {v5, v6, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_3
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 238
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->startDtmf(C)V

    .line 239
    return-void
.end method

.method public stopDtmf()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 244
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->stopDtmf()V

    .line 245
    return-void
.end method

.method public terminate(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Lcom/sec/ims/volte2/IImsCallSession;->info(ILjava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->convertEndReasonFromFW(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->terminate(I)Z

    move-result v0

    .line 206
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 207
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x1f5

    const/16 v4, 0xc8

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v0    # "result":Z
    :cond_1
    :goto_0
    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 332
    invoke-super {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->transfer(Ljava/lang/String;Z)V

    .line 333
    return-void
.end method

.method public updateCallProfile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 308
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    .line 309
    return-void
.end method

.method protected updateCmcCallExtras(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 8
    .param p1, "cp"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "com.samsung.telephony.extra.CMC_CS_DTMF_KEY"

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 263
    .local v0, "oemExtras":Landroid/os/Bundle;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v0    # "oemExtras":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 269
    .restart local v0    # "oemExtras":Landroid/os/Bundle;
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    .line 270
    .local v3, "cmcType":I
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getSessionId()I

    move-result v4

    .line 271
    .local v4, "sessionId":I
    invoke-virtual {p0, v3}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->isP2pPrimaryType(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 273
    const/4 v3, 0x1

    .line 276
    :cond_1
    const-string v5, "com.samsung.telephony.extra.CMC_TYPE"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string v5, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 279
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.telephony.extra.CMC_DIAL_TO"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDtmfKey()I

    move-result v5

    .line 281
    .local v5, "dtmfKey":I
    const/4 v6, -0x1

    if-le v5, v6, :cond_6

    const/16 v6, 0xc

    if-ge v5, v6, :cond_6

    .line 282
    const/4 v6, 0x0

    .line 283
    .local v6, "keyChar":C
    if-ltz v5, :cond_2

    const/16 v7, 0x9

    if-gt v5, v7, :cond_2

    .line 284
    add-int/lit8 v7, v5, 0x30

    int-to-char v6, v7

    goto :goto_1

    .line 285
    :cond_2
    const/16 v7, 0xa

    if-ne v5, v7, :cond_3

    .line 286
    const/16 v6, 0x2a

    goto :goto_1

    .line 287
    :cond_3
    const/16 v7, 0xb

    if-ne v5, v7, :cond_4

    .line 288
    const/16 v6, 0x23

    .line 290
    :cond_4
    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 292
    .end local v5    # "dtmfKey":I
    .end local v6    # "keyChar":C
    :cond_5
    invoke-virtual {p0, v3}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 293
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcCallTime()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.telephony.extra.CMC_PD_CALL_CONNECT_TIME"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 292
    :cond_6
    :goto_2
    nop

    .line 296
    :goto_3
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 298
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.telephony.extra.CMC_DEVICE_ID_BY_SD"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 299
    :cond_7
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 300
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.telephony.extra.CMC_DEVICE_ID"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 304
    return-void
.end method
