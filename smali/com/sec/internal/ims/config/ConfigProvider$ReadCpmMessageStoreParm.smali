.class Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;
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
    name = "ReadCpmMessageStoreParm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/ConfigProvider$1;

    .line 1035
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

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

    .line 1038
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v1, "root/application/1/cpm/"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2600(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v0

    .line 1039
    .local v0, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    const-string/jumbo v2, "root/application/1/cpm/messagestore/"

    .line 1040
    .local v2, "cpmMessageStorePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "root/application/1/cpm/messagestore/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1041
    .local v3, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1042
    return-object v3

    .line 1044
    :cond_0
    const-string v4, "messagestore/UserName"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1045
    const-string v4, "messagestore/UserPwd"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1049
    :cond_1
    const-string v1, "EventRpting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1050
    const-string v1, "AuthArchive"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1051
    const-string v1, "SMSStore"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1052
    const-string v1, "MMSStore"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1057
    :cond_2
    return-object v3

    .line 1053
    :cond_3
    :goto_0
    const-string/jumbo v1, "root/application/1/messaging/messagestore/"

    .line 1054
    .local v1, "messagingMessageStorePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v5, "root/application/1/messaging/messagestore/"

    invoke-static {v4, v5, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2600(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v0

    .line 1055
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    return-object v4

    .line 1046
    .end local v1    # "messagingMessageStorePath":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string/jumbo v4, "root/application/1/cpm/"

    .line 1047
    .local v4, "cpmPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method
