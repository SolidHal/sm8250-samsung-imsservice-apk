.class public Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;
.super Ljava/lang/Object;
.source "ParamNetAPIStatusControl.java"


# instance fields
.field public final mIsDefaultMsgAppNative:Z

.field public final mIsMsgAppForeground:Z

.field public final mIsNetworkValid:Z

.field public final mIsOMANetAPIRunning:Z

.field public final mIsProvisionSuccess:Z

.field public final mIsUserDeleteAccount:Z


# direct methods
.method public constructor <init>(ZZZZZZ)V
    .locals 0
    .param p1, "isMsgAppForeground"    # Z
    .param p2, "isNetworkValid"    # Z
    .param p3, "isAmbsRunning"    # Z
    .param p4, "isDefaultMsgAppNative"    # Z
    .param p5, "isUserDeleteAccount"    # Z
    .param p6, "isProvisionSuccess"    # Z

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    .line 16
    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    .line 17
    iput-boolean p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsOMANetAPIRunning:Z

    .line 18
    iput-boolean p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsDefaultMsgAppNative:Z

    .line 19
    iput-boolean p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsUserDeleteAccount:Z

    .line 20
    iput-boolean p6, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsProvisionSuccess:Z

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamNetAPIStatusControl [mIsMsgAppForeground= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsNetworkValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsOMANetAPIRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsOMANetAPIRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mIsDefaultMsgAppNative = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsDefaultMsgAppNative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mIsUserDeleteAccount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsUserDeleteAccount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsProvisionSuccess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsProvisionSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
