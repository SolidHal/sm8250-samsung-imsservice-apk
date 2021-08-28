.class Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;
.super Ljava/lang/Object;
.source "ConfigProvider.java"

# interfaces
.implements Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/ConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadCapDiscoveryParm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/ConfigProvider$1;

    .line 892
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    return-void
.end method


# virtual methods
.method public readParam(Ljava/lang/String;I)Ljava/util/Map;
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v1, "root/application/1/capdiscovery/"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2600(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v0

    .line 896
    .local v0, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    const-string v2, "capdiscoveryallowedprefixes"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    const-string/jumbo v1, "root/application/1/capdiscovery/capdiscoverywhitelist/capdiscoveryallowedprefixes/prefix"

    .line 898
    .local v1, "prefixPath":Ljava/lang/String;
    const-string/jumbo v2, "root/application/1/capdiscovery/capdiscoverywhitelist/capdiscoveryallowedprefixes/prefix"

    invoke-static {v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2800(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 900
    .end local v1    # "prefixPath":Ljava/lang/String;
    :cond_0
    const-string v2, "msgcapvalidity"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 901
    const-string v2, "lastseenactive"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 905
    :cond_1
    const-string/jumbo v2, "root/application/1/capdiscovery/"

    .line 906
    .local v2, "capPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 902
    .end local v2    # "capPath":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string/jumbo v1, "root/application/1/capdiscovery/ext/joyn/"

    .line 903
    .local v1, "joynPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "root/application/1/capdiscovery/ext/joyn/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method
