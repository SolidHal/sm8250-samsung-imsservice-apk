.class Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;
.super Ljava/lang/Object;
.source "VVMScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VvmProfileAttributes"
.end annotation


# instance fields
.field COSName:Ljava/lang/String;

.field EmailAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field IsBlocked:Ljava/lang/String;

.field Language:Ljava/lang/String;

.field NUT:Ljava/lang/String;

.field VVMOn:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->VVMOn:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->IsBlocked:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->COSName:Ljava/lang/String;

    .line 142
    const-string v1, "eng"

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->Language:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->NUT:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmProfileAttributes;->EmailAddress:Ljava/util/ArrayList;

    .line 148
    return-void
.end method
