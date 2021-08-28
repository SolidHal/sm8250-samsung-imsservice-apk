.class public final synthetic Lcom/sec/internal/ims/settings/-$$Lambda$DmConfigModule$6G_PDl7NrM4OVB9xMsMT9OT4Mxs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$DmConfigModule$6G_PDl7NrM4OVB9xMsMT9OT4Mxs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/settings/-$$Lambda$DmConfigModule$6G_PDl7NrM4OVB9xMsMT9OT4Mxs;

    invoke-direct {v0}, Lcom/sec/internal/ims/settings/-$$Lambda$DmConfigModule$6G_PDl7NrM4OVB9xMsMT9OT4Mxs;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/-$$Lambda$DmConfigModule$6G_PDl7NrM4OVB9xMsMT9OT4Mxs;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$DmConfigModule$6G_PDl7NrM4OVB9xMsMT9OT4Mxs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/DmConfigModule;->lambda$updateConfigValues$0(Ljava/lang/String;)V

    return-void
.end method
