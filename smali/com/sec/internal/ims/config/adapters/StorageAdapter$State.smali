.class abstract Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;
.super Ljava/lang/Object;
.source "StorageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/StorageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "State"
.end annotation


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field protected mStateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->mStateName:Ljava/lang/String;

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->mStateName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->LOG_TAG:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 184
    return-void
.end method

.method public delete(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAll()Z
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getState()I
    .locals 1

    .line 153
    const/4 v0, -0x1

    return v0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 157
    return-void
.end method

.method public query([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "projection"    # [Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    return-object v0
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

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    return v0
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

    .line 172
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method
