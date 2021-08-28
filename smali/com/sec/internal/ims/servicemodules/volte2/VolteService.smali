.class public Lcom/sec/internal/ims/servicemodules/volte2/VolteService;
.super Lcom/sec/ims/volte2/IVolteService$Stub;
.source "VolteService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 1
    .param p1, "service"    # Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 32
    invoke-direct {p0}, Lcom/sec/ims/volte2/IVolteService$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    .line 34
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private isPermissionGranted()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    .line 236
    const-string v1, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 234
    :goto_1
    return v0
.end method


# virtual methods
.method public changeAudioPath(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateAudioInterface(II)V

    .line 244
    return-void
.end method

.method public createCallProfile(II)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 3
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createCallProfile(II)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSessionWithRegId(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->createSessionWithRegId(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public createSessionWithRegId(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p2, "regId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/volte2/IVolteServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    .line 80
    return-void
.end method

.method public deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 100
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deregisterForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 120
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableCallWaitingRule(Z)V
    .locals 3
    .param p1, "enableRule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->enableCallWaitingRule(Z)V

    .line 139
    return-void
.end method

.method public getCallCount()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getCallCount()[I

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getParticipantIdForMerge(II)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "hostId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getParticipantIdForMerge(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method public getRttMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getRttMode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSession(I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyProgressIncomingCall(ILjava/util/Map;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "headers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    instance-of v0, p2, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    move-object v1, p2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->notifyProgressIncomingCall(ILjava/util/HashMap;)V

    .line 148
    :cond_0
    return-void
.end method

.method public registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 90
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 110
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/volte2/IVolteServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    .line 73
    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "broadcast"    # Z
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/registry/ImsRegistry;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 210
    return-void
.end method

.method public registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/IRttEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 187
    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendRttSessionModifyRequest(IZ)I

    .line 181
    return-void
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "accept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendRttSessionModifyResponse(IZ)V

    .line 175
    return-void
.end method

.method public setAutomaticMode(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->setAutomaticMode(IZ)V

    .line 169
    return-void
.end method

.method public setTtyMode(I)V
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->setTtyMode(I)V

    .line 126
    return-void
.end method

.method public startLocalRingBackTone(III)I
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->startLocalRingBackTone(III)I

    move-result v0

    return v0
.end method

.method public stopLocalRingBackTone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->stopLocalRingBackTone()I

    move-result v0

    return v0
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 215
    return-void
.end method

.method public unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/IRttEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 193
    return-void
.end method

.method public updateEccUrn(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "dialingNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateEccUrn(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSSACInfo(IIII)I
    .locals 3
    .param p1, "voiceFactor"    # I
    .param p2, "voiceTime"    # I
    .param p3, "videoFactor"    # I
    .param p4, "videoTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateSSACInfo(IIII)I

    move-result v0

    return v0
.end method
