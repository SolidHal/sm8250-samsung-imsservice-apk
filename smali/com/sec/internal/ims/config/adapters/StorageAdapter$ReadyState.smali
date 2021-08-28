.class Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;
.super Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;
.source "StorageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/StorageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)V
    .locals 1

    .line 212
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    .line 213
    const-string v0, "Ready"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Ljava/lang/String;)V

    .line 214
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->close()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$102(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)V

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$402(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    .line 228
    return-void
.end method

.method public delete(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->delete(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAll()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public query([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "projection"    # [Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->read(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 233
    .local v0, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 234
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 236
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readAll(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->read(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 248
    .local v0, "writeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->write(Ljava/util/Map;)Z

    move-result v1

    return v1
.end method

.method public writeAll(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 254
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->write(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
