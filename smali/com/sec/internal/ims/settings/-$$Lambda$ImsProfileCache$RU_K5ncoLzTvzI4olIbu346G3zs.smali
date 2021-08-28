.class public final synthetic Lcom/sec/internal/ims/settings/-$$Lambda$ImsProfileCache$RU_K5ncoLzTvzI4olIbu346G3zs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/ImsProfileCache;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/ImsProfileCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/-$$Lambda$ImsProfileCache$RU_K5ncoLzTvzI4olIbu346G3zs;->f$0:Lcom/sec/internal/ims/settings/ImsProfileCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/settings/-$$Lambda$ImsProfileCache$RU_K5ncoLzTvzI4olIbu346G3zs;->f$0:Lcom/sec/internal/ims/settings/ImsProfileCache;

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->lambda$dump$0$ImsProfileCache(Lcom/sec/ims/settings/ImsProfile;)V

    return-void
.end method
