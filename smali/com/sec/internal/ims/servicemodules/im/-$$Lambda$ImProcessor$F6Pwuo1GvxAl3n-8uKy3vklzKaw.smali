.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$F6Pwuo1GvxAl3n-8uKy3vklzKaw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$F6Pwuo1GvxAl3n-8uKy3vklzKaw;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$F6Pwuo1GvxAl3n-8uKy3vklzKaw;->f$1:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$F6Pwuo1GvxAl3n-8uKy3vklzKaw;->f$2:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$F6Pwuo1GvxAl3n-8uKy3vklzKaw;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$F6Pwuo1GvxAl3n-8uKy3vklzKaw;->f$1:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$F6Pwuo1GvxAl3n-8uKy3vklzKaw;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$deleteMessagesByImdnId$4$ImProcessor(Ljava/util/Map;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
