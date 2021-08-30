.class public Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
.super Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.source "FtHttpOutgoingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;,
        Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder2;,
        Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;
    }
.end annotation


# static fields
.field private static final EVENT_RETRY_UPLOAD:I = 0x131

.field private static final EVENT_SEND_MESSAGE_DONE:I = 0x130

.field private static final EVENT_UPLOAD_CANCELED:I = 0x12f

.field private static final EVENT_UPLOAD_COMPLETED:I = 0x12e

.field private static final EVENT_UPLOAD_PROGRESS:I = 0xc9

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private isUseDeaccentedFilePath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 95
    .local p1, "builder":Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)V

    .line 96
    return-void
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    .line 82
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->isUseDeaccentedFilePath:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->isUseDeaccentedFilePath:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->sendRCSMInfoToHQM(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    .line 82
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->deleteTemporaryFile()V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder<",
            "*>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder2;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$1;)V

    return-object v0
.end method

.method private deleteTemporaryFile()V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->isUseDeaccentedFilePath:Z

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mDeaccentedFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Success to delete temporary file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to delete temporary file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void
.end method

.method private getImsRegistrationCurrentRat(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 158
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 159
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 160
    .local v1, "regis":[Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_1

    .line 161
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 162
    .local v4, "regi":Lcom/sec/ims/ImsRegistration;
    const-string v5, "ft_http"

    invoke-virtual {v4, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 161
    .end local v4    # "regi":Lcom/sec/ims/ImsRegistration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v1    # "regis":[Lcom/sec/ims/ImsRegistration;
    :cond_1
    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsRegistrationCurrentRat: NullPointerException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method private sendRCSMInfoToHQM(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "orst"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/String;

    const v0, true
    return v0
.end method


# virtual methods
.method protected createFtStateMachine(Ljava/lang/String;Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 114
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FtHttpOutgoingMessage#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$FtHttpStateMachine;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;Ljava/lang/String;Landroid/os/Looper;)V

    return-object v0
.end method

.method public getTransferMech()I
    .locals 1

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoResumable()Z
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "cancel_for_deregi_promptly"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .locals 3
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 129
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendMessageDone: mid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mBody = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mBody:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->setSentTimestamp(J)V

    .line 134
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v0, p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 141
    :cond_1
    :goto_0
    return-void
.end method

.method protected sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "contributionId"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "ownImsi"    # Ljava/lang/String;
    .param p6, "isGroupchat"    # Z
    .param p7, "isBotSessionAnonymized"    # Z

    .line 120
    return-void
.end method

.method protected sendDisplayedNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "contributionId"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "ownImsi"    # Ljava/lang/String;
    .param p6, "isGroupchat"    # Z
    .param p7, "isBotSessionAnonymized"    # Z

    .line 125
    return-void
.end method
