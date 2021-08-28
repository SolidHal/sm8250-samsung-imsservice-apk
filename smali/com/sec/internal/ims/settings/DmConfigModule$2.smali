.class Lcom/sec/internal/ims/settings/DmConfigModule$2;
.super Landroid/database/ContentObserver;
.source "DmConfigModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/DmConfigModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/settings/DmConfigModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/settings/DmConfigModule;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/settings/DmConfigModule;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 461
    iput-object p1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$2;->this$0:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .line 464
    const-string v0, ""

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$2;->this$0:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-static {v1}, Lcom/sec/internal/ims/settings/DmConfigModule;->access$000(Lcom/sec/internal/ims/settings/DmConfigModule;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 465
    const-string v1, "content://com.sec.ims.settings/nvlist"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 464
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 466
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v2, "DmConfigModule"

    if-eqz v1, :cond_1

    .line 467
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "nvList":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 471
    const-string v4, "["

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .end local v3    # "nvList":Ljava/lang/String;
    .local v0, "nvList":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DmConfigModule$2;->this$0:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-static {v3}, Lcom/sec/internal/ims/settings/DmConfigModule;->access$100(Lcom/sec/internal/ims/settings/DmConfigModule;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 473
    iget-object v3, p0, Lcom/sec/internal/ims/settings/DmConfigModule$2;->this$0:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-static {v3}, Lcom/sec/internal/ims/settings/DmConfigModule;->access$100(Lcom/sec/internal/ims/settings/DmConfigModule;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 475
    .end local v0    # "nvList":Ljava/lang/String;
    .restart local v3    # "nvList":Ljava/lang/String;
    :cond_0
    const-string v0, "nvList is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    .end local v3    # "nvList":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 479
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nv list reloaded:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/DmConfigModule$2;->this$0:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-static {v3}, Lcom/sec/internal/ims/settings/DmConfigModule;->access$100(Lcom/sec/internal/ims/settings/DmConfigModule;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 481
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 464
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method
