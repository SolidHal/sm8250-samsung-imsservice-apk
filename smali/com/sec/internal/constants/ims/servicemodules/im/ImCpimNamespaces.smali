.class public Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;
.super Ljava/lang/Object;
.source "ImCpimNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;
    }
.end annotation


# instance fields
.field private final mNamespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->mNamespaces:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->mNamespaces:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;

    .line 58
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "h":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->mNamespaces:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->mNamespaces:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    .line 61
    .local v1, "ns":Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->mHeaders:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->mHeaders:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 65
    .end local v1    # "ns":Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->mNamespaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImCpimNamespaces [mNamespaces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->mNamespaces:Ljava/util/Map;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
