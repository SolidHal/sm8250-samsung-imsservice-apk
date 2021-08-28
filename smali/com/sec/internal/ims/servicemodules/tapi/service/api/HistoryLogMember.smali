.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;
.super Ljava/lang/Object;
.source "HistoryLogMember.java"


# instance fields
.field private mColumnMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderId:I

.field private mTable:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p4, "columnMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mProviderId:I

    .line 19
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mUri:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mTable:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mColumnMapping:Ljava/util/Map;

    .line 22
    return-void
.end method


# virtual methods
.method public getColumnMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mColumnMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mProviderId:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mUri:Ljava/lang/String;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogMember;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
