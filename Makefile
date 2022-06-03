#===- tools/llvmta/Makefile --------------------------------*- Makefile -*-===##
# 
#		LLVMTA - Timing Analyser performing worst-case execution time analysis
#			using the LLVM backend intermediate representation
#
# Copyright (C) 2013-2015  Saarland University
#
# This file is distributed under the Saarland University Software Release
# License. See LICENSE.TXT for details.
#
# THIS SOFTWARE IS PROVIDED "AS IS", WITHOUT ANY EXPRESSED OR IMPLIED
# WARRANTIES, INCLUDING BUT NOT LIMITED TO, THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE SAARLAND UNIVERSITY, THE
# CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DIRECT,
# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING BUT NOT LIMITED TO PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED OR OTHER LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, TORT OR OTHERWISE, ARISING IN ANY WAY FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS WITH THE
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH A DAMAGE.
#
##===----------------------------------------------------------------------===##

ifndef LLVMTA_LEVEL

LLVMTA_LEVEL := .
DIRS := include lib tools

PARALLEL_DIRS :=

endif

LEVEL := $(LLVMTA_LEVEL)/../..

include $(LEVEL)/Makefile.common

# Grab Headers
CPP.Flags += -I$(PROJ_OBJ_DIR)/$(LEVEL)/lib/Target/ARM -I$(PROJ_SRC_DIR)/$(LEVEL)/lib/Target/ARM -I$(PROJ_OBJ_DIR)/$(LLVMTA_LEVEL)/include -I$(PROJ_SRC_DIR)/$(LLVMTA_LEVEL)/include

