.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$sFqpKZAk4V8ElHrynqGLwsC8ZYM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$sFqpKZAk4V8ElHrynqGLwsC8ZYM;->f$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$sFqpKZAk4V8ElHrynqGLwsC8ZYM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$sFqpKZAk4V8ElHrynqGLwsC8ZYM;->f$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$sFqpKZAk4V8ElHrynqGLwsC8ZYM;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->lambda$setThrottleContactSync$0$ContactCache(Z)V

    return-void
.end method
