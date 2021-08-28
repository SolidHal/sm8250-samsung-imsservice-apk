.class public Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;
.super Ljava/lang/Object;
.source "CmStoreInvoker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCldGetInstance:Ljava/lang/reflect/Method;

.field mCldMsgServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field mCldMsgServiceObj:Ljava/lang/Object;

.field mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 1
    .param p1, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    .line 17
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldGetInstance:Ljava/lang/reflect/Method;

    .line 18
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 22
    return-void
.end method

.method private isCmStoreEnabled()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "central_msg_store"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCmStoreEnabled(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "central_msg_store"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReady()Z
    .locals 6

    .line 26
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 27
    const-string v1, "com.sec.internal.ims.cmstore.CloudMessageServiceWrapper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldGetInstance:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v3, "getInstance"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldGetInstance:Ljava/lang/reflect/Method;

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 33
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldGetInstance:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_2
    nop

    .line 39
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    return v0
.end method


# virtual methods
.method protected declared-synchronized onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v1, "createSession"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    .local v0, "createSessionMethod":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v3, "createParticipant"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 47
    .local v1, "createParticipantMethod":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 48
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v1, v3, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v0    # "createSessionMethod":Ljava/lang/reflect/Method;
    .end local v1    # "createParticipantMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 49
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    .end local p1    # "phoneId":I
    .end local p2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onDeleteRcsMessagesUsingChatId(Ljava/util/List;Z)V
    .locals 6
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 105
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingChatId: list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v1, "deleteRCSMessageListUsingChatId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/List;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 107
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 108
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "isLocalWipeout":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onDeleteRcsMessagesUsingImdnId(Ljava/util/List;Z)V
    .locals 6
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 93
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingMsgId: list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v1, "deleteRCSMessageListUsingImdnId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/List;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 96
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "isLocalWipeout":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onDeleteRcsMessagesUsingMsgId(Ljava/util/List;Z)V
    .locals 6
    .param p2, "isLocalWipeout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 81
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingMsgId: list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v1, "deleteRCSMessageListUsingMsgId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/List;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 84
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "isLocalWipeout":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onReadRcsMessageList(ILjava/util/List;)V
    .locals 6
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 67
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 69
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readMessagesforCloudSync: list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string/jumbo v1, "readRCSMessageList"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/List;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 71
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 72
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    .end local p1    # "phoneId":I
    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onReceiveRcsMessage(ILcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "msg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string/jumbo v1, "receiveRCSMessage"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceObj:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getImdnId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x0

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 60
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 55
    .end local p1    # "phoneId":I
    .end local p2    # "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
