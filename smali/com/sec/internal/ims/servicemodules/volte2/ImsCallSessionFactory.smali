.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;
.super Ljava/lang/Object;
.source "ImsCallSessionFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionFactory"

.field private static mCallIdCounter:I


# instance fields
.field private mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field private mServiceModuleLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;)V
    .locals 1
    .param p1, "module"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 34
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    .line 35
    return-void
.end method

.method private createCallId()I
    .locals 4

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "repeated":Z
    :goto_0
    sget v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    const/16 v2, 0xff

    const-string v3, "ImsCallSessionFactory"

    if-lt v1, v2, :cond_1

    .line 112
    const/4 v1, 0x0

    sput v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const-string v1, "All CallId is allocated, session create fail"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, -0x1

    return v1

    .line 118
    :cond_0
    const/4 v0, 0x1

    .line 121
    :cond_1
    sget v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    .line 123
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-nez v1, :cond_2

    .line 124
    nop

    .line 130
    sget v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    return v1

    .line 127
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDefaultConfSession(Lcom/sec/ims/ImsRegistration;)Z
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 98
    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 100
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const/4 v1, 0x1

    return v1

    .line 105
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized create(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 9
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "isPendingCall"    # Z

    monitor-enter p0

    .line 39
    if-nez p2, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    goto :goto_0

    .line 42
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 45
    .restart local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    if-nez p3, :cond_1

    .line 47
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 52
    const-string v1, "ImsCallSessionFactory"

    const-string v2, "createImsCallSession: emergency session."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    goto/16 :goto_2

    .line 55
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_2
    if-nez p2, :cond_5

    if-eqz p3, :cond_5

    .line 56
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 58
    :cond_3
    const-string v1, "ImsCallSessionFactory"

    const-string v2, "createImsCallSession: conf call session without regi info"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-object v3, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    .restart local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    goto :goto_2

    .line 62
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_4
    const-string v1, "ImsCallSessionFactory"

    const-string v2, "createImsCallSession: normal call session without regi info"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-object v3, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    .restart local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    goto :goto_2

    .line 66
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_5
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->isDefaultConfSession(Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 71
    :cond_6
    const-string v1, "ImsCallSessionFactory"

    const-string v2, "createImsCallSession: normal call session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-object v3, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    .restart local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    goto :goto_2

    .line 67
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_7
    :goto_1
    const-string v1, "ImsCallSessionFactory"

    const-string v2, "createImsCallSession: conference session."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-object v3, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    .line 76
    .restart local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getVolteStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-result-object v2

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    .line 76
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->init(Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 78
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->createCallId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .local v2, "callId":I
    if-gez v2, :cond_8

    .line 81
    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 84
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;
    :cond_8
    if-eqz p2, :cond_9

    :try_start_1
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 85
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setCmcType(I)V

    .line 86
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getVideoCrbtSupportType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setVideoCrbtSupportType(I)V

    goto :goto_3

    .line 87
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;
    :cond_9
    if-nez p2, :cond_b

    .line 88
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    .line 89
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    .line 90
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_b

    .line 91
    :cond_a
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setCmcType(I)V

    .line 93
    :cond_b
    :goto_3
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setCallId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit p0

    return-object v1

    .line 38
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "callId":I
    .end local p1    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local p2    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local p3    # "isPendingCall":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
