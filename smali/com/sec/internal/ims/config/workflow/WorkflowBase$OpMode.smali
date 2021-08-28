.class public final enum Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
.super Ljava/lang/Enum;
.source "WorkflowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLED_TERMS_AND_CONDIDIONTS_REJECTED:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

.field public static final enum TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 346
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 347
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DISABLE_TEMPORARY"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 348
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DISABLE_PERMANENTLY"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 349
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DISABLE"

    const/4 v5, 0x3

    const/4 v6, -0x2

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 350
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DORMANT"

    const/4 v6, 0x4

    const/4 v7, -0x3

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 351
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DISABLE_RCS_BY_USER"

    const/4 v7, 0x5

    const/4 v8, -0x4

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 352
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "ENABLE_RCS_BY_USER"

    const/4 v8, 0x6

    const/4 v9, -0x5

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 353
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE"

    const/4 v9, 0x7

    const/4 v10, -0x6

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 354
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE"

    const/16 v10, 0x8

    const/4 v11, -0x7

    invoke-direct {v0, v1, v10, v11}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 355
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DISABLE_BY_RCS_DISABLED_STATE"

    const/16 v11, 0x9

    const/4 v12, -0x8

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 356
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DORMANT_BY_RCS_DISABLED_STATE"

    const/16 v12, 0xa

    const/16 v13, -0x9

    invoke-direct {v0, v1, v12, v13}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 357
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "TURNEDOFF_BY_RCS_DISABLED_STATE"

    const/16 v13, 0xb

    const/16 v14, -0xa

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 358
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "DISABLED_TERMS_AND_CONDIDIONTS_REJECTED"

    const/16 v14, 0xc

    const/16 v15, -0xb

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLED_TERMS_AND_CONDIDIONTS_REJECTED:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 359
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const-string v1, "NONE"

    const/16 v15, 0xd

    const/16 v14, -0xc

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 345
    const/16 v1, 0xe

    new-array v1, v1, [Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    sget-object v14, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v14, v1, v2

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLED_TERMS_AND_CONDIDIONTS_REJECTED:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->$VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 363
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 364
    iput p3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->mValue:I

    .line 365
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 345
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 1

    .line 345
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->$VALUES:[Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->mValue:I

    return v0
.end method
