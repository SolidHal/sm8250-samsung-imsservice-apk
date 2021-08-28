.class Lcom/sec/internal/ims/config/adapters/XmlParserAdapter$1;
.super Ljava/util/TreeMap;
.source "XmlParserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 57
    const-string v0, "application"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "conrefs"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "icsi_list"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "lbo_p-cscf_address"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v0, "phonecontext_list"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, ".*application/[0-9]+/phonecontext_list/[0-9]+.*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 62
    const-string/jumbo v2, "public_user_identity"

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v0, "public_user_identity_list"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
