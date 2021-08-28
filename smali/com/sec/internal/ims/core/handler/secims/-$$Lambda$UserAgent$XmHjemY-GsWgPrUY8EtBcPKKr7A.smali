.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$UserAgent$XmHjemY-GsWgPrUY8EtBcPKKr7A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/ims/util/ImsUri$UriType;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/ims/util/ImsUri$UriType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$UserAgent$XmHjemY-GsWgPrUY8EtBcPKKr7A;->f$0:Lcom/sec/ims/util/ImsUri$UriType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$UserAgent$XmHjemY-GsWgPrUY8EtBcPKKr7A;->f$0:Lcom/sec/ims/util/ImsUri$UriType;

    check-cast p1, Lcom/sec/ims/util/NameAddr;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->lambda$getFirstImpuByUriType$0(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z

    move-result p1

    return p1
.end method
