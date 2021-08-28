.class Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;
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
    name = "ReadEnrichedCallingParm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/ConfigProvider$1;

    .line 953
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

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

    .line 956
    const-string/jumbo v0, "root/application/1/services/"

    .line 957
    .local v0, "servicePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v2, "root/application/1/services/"

    invoke-static {v1, v2, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2600(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 959
    .local v1, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    const-string v3, "contentShareDataOff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 960
    const-string/jumbo v3, "preAndPostCallDataOff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 964
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .local v2, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 961
    .end local v2    # "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    const-string/jumbo v2, "root/application/1/services/ext/dataoff/"

    .line 962
    .local v2, "dataOffPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "root/application/1/services/ext/dataoff/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 963
    .local v2, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 967
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 968
    return-object v2

    .line 971
    :cond_2
    const-string/jumbo v3, "root/application/4/"

    .line 972
    .local v3, "enrichedCallingPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v5, "root/application/4/"

    invoke-static {v4, v5, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2600(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 974
    return-object v2
.end method
