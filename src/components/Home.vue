<template>
<div class="body">
  <div class="container">
    <Card name="Metis" icon="metis.png"></Card>
  </div>
</div>
</template>

<script>
import Card from './Card'
export default {
    name: 'Stake',
    data() {
        return {
            balance: 0,
            amount: 0
        }
    },
    components: {
      Card
    },
    methods: {
        changeMethod: function (value) {
            this.method = value
        }
    },
    computed: {
        unit: function () {
            return this.method === 1 ? 'Num' : 'M'
        }
    }
}
</script>

<style scoped>
.body {
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.container {
  width: 95%;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  -webkit-box-align: center;
  align-items: center;
  align-content: center;
  flex: 1 1 0%;
  overflow: hidden auto;
  z-index: 1;
  padding: 20px 16px 16px;
}

.intro {
  color: #ffffff;
  font-size: 24px;
}

.email {
  font-size: 26px;
  line-height: 20px;
  font-weight: 500;
}
</style>
