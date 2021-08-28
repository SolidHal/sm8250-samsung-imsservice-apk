.class public final synthetic Lcom/sec/internal/ims/settings/-$$Lambda$SmsSetting$R-Jo97O6SeUiCAEQP1ljRskVrns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/SmsSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/SmsSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/-$$Lambda$SmsSetting$R-Jo97O6SeUiCAEQP1ljRskVrns;->f$0:Lcom/sec/internal/ims/settings/SmsSetting;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/settings/-$$Lambda$SmsSetting$R-Jo97O6SeUiCAEQP1ljRskVrns;->f$0:Lcom/sec/internal/ims/settings/SmsSetting;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/SmsSetting;->lambda$dump$0$SmsSetting(Ljava/lang/String;)V

    return-void
.end method
