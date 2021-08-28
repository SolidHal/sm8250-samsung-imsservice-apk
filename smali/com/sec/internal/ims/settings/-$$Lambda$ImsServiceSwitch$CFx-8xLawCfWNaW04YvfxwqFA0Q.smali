.class public final synthetic Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$CFx-8xLawCfWNaW04YvfxwqFA0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/ImsServiceSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/ImsServiceSwitch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$CFx-8xLawCfWNaW04YvfxwqFA0Q;->f$0:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$CFx-8xLawCfWNaW04YvfxwqFA0Q;->f$0:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->lambda$getSwitchDump$1$ImsServiceSwitch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
