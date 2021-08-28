.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionDefaultState$cf1NHwig_RdF-QESzeh1NiV0m84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionDefaultState$cf1NHwig_RdF-QESzeh1NiV0m84;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionDefaultState$cf1NHwig_RdF-QESzeh1NiV0m84;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->lambda$onMessageRevokeTimerExpired$0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
