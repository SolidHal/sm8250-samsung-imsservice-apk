.class Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;
.super Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;
.source "StorageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/StorageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)V
    .locals 1

    .line 192
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    .line 193
    const-string v0, "IDLE"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Ljava/lang/String;)V

    .line 194
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open storage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$002(Lcom/sec/internal/ims/config/adapters/StorageAdapter;I)I

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$102(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$300(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)I

    move-result v3

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$202(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)V

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$402(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    .line 208
    return-void
.end method
