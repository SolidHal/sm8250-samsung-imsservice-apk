.class Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;
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
    name = "ReadImFtParm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/ims/config/ConfigProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/ConfigProvider;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/ConfigProvider$1;

    .line 923
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

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

    .line 926
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v1, "root/application/1/im/"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2600(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v0

    .line 927
    .local v0, "storage":Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    const-string/jumbo v2, "root/application/1/im/"

    .line 928
    .local v2, "imftPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 929
    .local v1, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 930
    return-object v1

    .line 933
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->access$2900(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 934
    const-string/jumbo v3, "root/application/1/im/ext/"

    .line 935
    .local v3, "imExtPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "root/application/1/im/ext/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    return-object v4

    .line 937
    .end local v3    # "imExtPath":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->access$3000(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 938
    const-string/jumbo v3, "root/application/1/messaging/chat/"

    .line 939
    .local v3, "chatPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "root/application/1/messaging/chat/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    return-object v4

    .line 941
    .end local v3    # "chatPath":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->access$3100(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 942
    const-string/jumbo v3, "root/application/1/messaging/filetransfer/"

    .line 943
    .local v3, "filetransferPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "root/application/1/messaging/filetransfer/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    return-object v4

    .line 945
    .end local v3    # "filetransferPath":Ljava/lang/String;
    :cond_3
    const-string v3, "exploder-uri"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 946
    const-string/jumbo v3, "root/application/1/messaging/standalonemsg/"

    .line 947
    .local v3, "standaloneMsgPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "root/application/1/messaging/standalonemsg/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    return-object v4

    .line 949
    .end local v3    # "standaloneMsgPath":Ljava/lang/String;
    :cond_4
    return-object v1
.end method
