.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6wYir1g8t_KMeKCXHiYNPP6luOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6wYir1g8t_KMeKCXHiYNPP6luOI;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6wYir1g8t_KMeKCXHiYNPP6luOI;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$deleteChatsForUnsubscribe$9$ImSessionProcessor()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
