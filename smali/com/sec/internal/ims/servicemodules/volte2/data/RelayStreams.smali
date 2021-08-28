.class public Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
.super Ljava/lang/Object;
.source "RelayStreams.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBoundStreamId:I

.field private mRelayChannelId:I

.field private mSessionId:I

.field private mStreamId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    .line 10
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    .line 12
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    .line 15
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RelayStreams"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "sessionId"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    .line 10
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    .line 12
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    .line 19
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "streamId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    .line 21
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 3
    .param p1, "relayStreamEvent"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    .line 10
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    .line 12
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    .line 25
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "streamId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getStreamId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getStreamId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    .line 29
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    .line 30
    return-void
.end method


# virtual methods
.method public getBoundStreamId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    return v0
.end method

.method public getRelayChannelId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    return v0
.end method

.method public getStreamId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    return v0
.end method

.method public setBoundStreamId(I)V
    .locals 0
    .param p1, "boundStreamId"    # I

    .line 41
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    .line 42
    return-void
.end method

.method public setRelayChannelId(I)V
    .locals 0
    .param p1, "relayChannelId"    # I

    .line 49
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelayStreams [mStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBoundStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRelayChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
