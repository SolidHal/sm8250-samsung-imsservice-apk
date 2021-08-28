.class public Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;,
        Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;,
        Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    }
.end annotation


# instance fields
.field private mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

.field private mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field private mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

.field private mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

.field private mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field private mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V
    .locals 7
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V
    .locals 0
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .param p3, "sipResponse"    # Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;
    .param p4, "msrpResponse"    # Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .param p5, "warningHeader"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;
    .param p6, "reasonHeader"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 7
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "base"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v2, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    iget-object v3, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    iget-object v4, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    iget-object v5, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    iget-object v6, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    .line 26
    return-void
.end method

.method private init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V
    .locals 1
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .param p3, "sipResponse"    # Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;
    .param p4, "msrpResponse"    # Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .param p5, "warningHeader"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;
    .param p6, "reasonHeader"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    .line 37
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 38
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 39
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    .line 40
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 41
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    .line 42
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    .line 43
    return-void
.end method


# virtual methods
.method public getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object v0
.end method

.method public getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    return-object v0
.end method

.method public getReasonHdr()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    return-object v0
.end method

.method public getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    return-object v0
.end method

.method public getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-object v0
.end method

.method public getWarningHdr()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    return-object v0
.end method

.method public toCriticalLog()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    if-eqz v1, :cond_1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    if-eqz v1, :cond_2

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",m=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    if-eqz v1, :cond_3

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    if-eqz v1, :cond_4

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result [mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mImError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    if-eqz v1, :cond_1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSipResponse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    if-eqz v1, :cond_2

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mMsrpResponse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    if-eqz v1, :cond_3

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mWarningHdr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    if-eqz v1, :cond_4

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mReasonHdr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    return-object v0
.end method
