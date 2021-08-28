.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;
.super Ljava/lang/Object;
.source "CallStateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticipantUser"
.end annotation


# instance fields
.field private final mParticipantId:I

.field private final mParticipantStatus:I

.field private final mSessionId:I

.field private final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "participantId"    # I
    .param p2, "sessionId"    # I
    .param p3, "participantStatus"    # I
    .param p4, "uri"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mParticipantId:I

    .line 48
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mSessionId:I

    .line 49
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mParticipantStatus:I

    .line 50
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mUri:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getParticipantId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mParticipantId:I

    return v0
.end method

.method public getParticipantStatus()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mParticipantStatus:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mSessionId:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mUri:Ljava/lang/String;

    return-object v0
.end method
