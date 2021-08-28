.class Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;
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
    name = "ReadExtParm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/ConfigProvider$1;

    .line 840
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    return-void
.end method


# virtual methods
.method public readParam(Ljava/lang/String;I)Ljava/util/Map;
    .locals 6
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

    .line 843
    const-string/jumbo v0, "root/application/0/ext/"

    .line 844
    .local v0, "extPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v2, "root/application/0/ext/"

    invoke-static {v1, v2, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2600(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 845
    .local v1, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 846
    .local v2, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 847
    return-object v2

    .line 849
    :cond_0
    const-string/jumbo v3, "root/application/0/3gpp_ims/ext/gsma/"

    .line 850
    .local v3, "extUp20Path":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v5, "root/application/0/3gpp_ims/ext/gsma/"

    invoke-static {v4, v5, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2600(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    return-object v4
.end method
