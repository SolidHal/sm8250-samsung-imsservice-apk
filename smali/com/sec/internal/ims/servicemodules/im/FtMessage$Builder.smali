.class public abstract Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
.super Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
.source "FtMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<",
        "TT;>;>",
        "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCancelReason:I

.field private mCurrentStateMachineState:I

.field private mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mFileTransferId:Ljava/lang/String;

.field private mInReplyToContributionId:Ljava/lang/String;

.field private mIsGroupChat:Z

.field private mIsResizable:Z

.field private mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

.field private mLooper:Landroid/os/Looper;

.field private mPlayingLength:I

.field private mResumableOptionCode:I

.field private mThumbnailPath:Ljava/lang/String;

.field private mTimeDuration:I

.field private mTransferredBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 865
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mTransferredBytes:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mInReplyToContributionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileTransferId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mResumableOptionCode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mCancelReason:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mIsResizable:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mIsGroupChat:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mCurrentStateMachineState:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileSize:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mPlayingLength:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 865
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mTimeDuration:I

    return v0
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 1

    .line 983
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    return-object v0
.end method

.method public fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 900
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileName:Ljava/lang/String;

    .line 901
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 895
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFilePath:Ljava/lang/String;

    .line 896
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "fileSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 905
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileSize:J

    .line 906
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "fileTransferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 926
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileTransferId:Ljava/lang/String;

    .line 927
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "inReplyToConversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 931
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mInReplyToContributionId:Ljava/lang/String;

    .line 932
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "isGroupChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 956
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mIsGroupChat:Z

    .line 957
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "isResizable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 951
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mIsResizable:Z

    .line 952
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;",
            ")TT;"
        }
    .end annotation

    .line 890
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    .line 891
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")TT;"
        }
    .end annotation

    .line 885
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mLooper:Landroid/os/Looper;

    .line 886
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public setCancelReason(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "cancelReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 941
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mCancelReason:I

    .line 942
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public setFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            ")TT;"
        }
    .end annotation

    .line 967
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 968
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public setPlayingLength(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "playingLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 978
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mPlayingLength:I

    .line 979
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public setResumableOptions(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "resumableOptionCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 946
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mResumableOptionCode:I

    .line 947
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "currentState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 936
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mCurrentStateMachineState:I

    .line 937
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "thumbnailPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 911
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mThumbnailPath:Ljava/lang/String;

    .line 912
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "timeDuration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 916
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mTimeDuration:I

    .line 917
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method

.method public transferredBytes(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    .locals 1
    .param p1, "transferredBytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 921
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<TT;>;"
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mTransferredBytes:J

    .line 922
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    return-object v0
.end method
