.class public Lcom/sec/internal/constants/ims/SipReason;
.super Ljava/lang/Object;
.source "SipReason.java"


# instance fields
.field private mCause:I

.field private mExtension:[Ljava/lang/String;

.field private mIsLocalRelease:Z

.field private mProtocol:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/SipReason;->mIsLocalRelease:Z

    .line 23
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "cause"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "isLocalRelease"    # Z
    .param p5, "extensions"    # [Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipReason;->mProtocol:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/sec/internal/constants/ims/SipReason;->mCause:I

    .line 37
    iput-object p3, p0, Lcom/sec/internal/constants/ims/SipReason;->mText:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/sec/internal/constants/ims/SipReason;->mExtension:[Ljava/lang/String;

    .line 39
    iput-boolean p4, p0, Lcom/sec/internal/constants/ims/SipReason;->mIsLocalRelease:Z

    .line 40
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "cause"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extensions"    # [Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipReason;->mProtocol:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/sec/internal/constants/ims/SipReason;->mCause:I

    .line 28
    iput-object p3, p0, Lcom/sec/internal/constants/ims/SipReason;->mText:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/sec/internal/constants/ims/SipReason;->mExtension:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/SipReason;->mIsLocalRelease:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getCause()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/sec/internal/constants/ims/SipReason;->mCause:I

    return v0
.end method

.method public getExtensions()[Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sec/internal/constants/ims/SipReason;->mExtension:[Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 1
    .param p1, "reason"    # I

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sec/internal/constants/ims/SipReason;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sec/internal/constants/ims/SipReason;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalRelease()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/SipReason;->mIsLocalRelease:Z

    return v0
.end method

.method public setLocalRelease(Z)V
    .locals 0
    .param p1, "isLocalRelease"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/SipReason;->mIsLocalRelease:Z

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/SipReason;->mProtocol:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v2, "cause="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/sec/internal/constants/ims/SipReason;->mCause:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string/jumbo v2, "text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/SipReason;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-object v1, p0, Lcom/sec/internal/constants/ims/SipReason;->mExtension:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 80
    .local v4, "ext":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .end local v4    # "ext":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
